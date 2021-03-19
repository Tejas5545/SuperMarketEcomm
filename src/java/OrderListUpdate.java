
import DAOs.DaoOrders;
import DAOs.DaoOrdersList;
import DAOs.DaoOrdersStatus;
import DAOs.DaoProducts;
import POJOs.PojoOrders;
import POJOs.PojoOrdersList;
import POJOs.PojoOrdersStatus;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/OrderListUpdate"})
public class OrderListUpdate extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */

            LocalDateTime datetime1 = LocalDateTime.now();
            DateTimeFormatter format = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");

            String myJsonData = request.getParameter("data");
            if (myJsonData != null && myJsonData.length() > 0) {
                String[] arr = myJsonData.substring(1, myJsonData.length() - 1).split(",");
                for (int i = 0; i < arr.length; i = i + 3) {
                    int id = Integer.parseInt(arr[i]);
                    int qty = Integer.parseInt(arr[i + 1]);
                    int total = Integer.parseInt(arr[i + 2]);
                    System.out.println(id + " " + qty + " " + total);
                    DaoOrdersList.updateTotal(id, qty, total);
                }
            }

            String odid = request.getParameter("ordid");
            if (odid != null) {
                PojoOrdersStatus pojo = DaoOrdersStatus.getOrderStatusByOrdId(Integer.parseInt(odid));
                String accepttime = "null";
                if (pojo != null) {
                    if (pojo.getAcceptstatus() == null) {
                        out.println("null");
                    } else {
                        out.println(pojo.getAcceptstatus() + "@" + pojo.getAccepttime());
                    }
                } else {
                    System.out.println("null");
                }
            }

            String ordhidsrr = request.getParameter("ordhidsrr");
            if (ordhidsrr != null && ordhidsrr.length() > 0) {

                int ordid = Integer.parseInt(ordhidsrr);

                List<PojoOrdersList> li = DaoOrdersList.getOrdByOrdid(ordid);
                for (PojoOrdersList p : li) {
                    if (p != null) {
                        DaoProducts.updateStock(p.getPrdid(), p.getPrdqty(), "inc");
                    }
                }

                DaoOrdersStatus.updateR(new PojoOrdersStatus(ordid, 0, "NA"));
                response.sendRedirect("Shopkeeper/shopkeeperDashboard.jsp");
            }

            String checkdata = request.getParameter("checkdata");
            if (checkdata != null && checkdata.length() > 0) {
                String[] arr = checkdata.substring(1, checkdata.length() - 1).split(",");
                System.out.println(arr[0] + " " + arr[1]);
                int ordid = Integer.parseInt(arr[1]);
                int totalbill = Integer.parseInt(arr[0]);

                PojoOrders ord = DaoOrders.getOrdersByOrdid(ordid);
                if (ord != null) {
                    String ordarrivalat = datetime1.format(format);
                    System.out.println("Checkout Time : " + ordarrivalat);
                    DaoOrders.updateTotal(totalbill, ordid);
                    DaoOrdersStatus.updateOrderStatus(1, 0, ordarrivalat, ordid);
                    System.out.println("Order Status change successfully");
                    List<PojoOrdersList> li = DaoOrdersList.getOrdByOrdid(ordid);
                    for (PojoOrdersList p : li) {
                        if (p != null) {
                            DaoProducts.updateStock(p.getPrdid(), p.getPrdqty(), "des");
                        }
                    }
                }
            }

            String canid = request.getParameter("canid");
            if (canid != null) {
                int ordid = Integer.parseInt(canid);
                PojoOrders pojo = DaoOrders.getOrdersByOrdid(ordid);
                if (pojo == null) {
                    out.println("Order is not Exists");
                } else {
                    PojoOrdersStatus sts = DaoOrdersStatus.getOrderStatusByOrdId(ordid);

                    List<PojoOrdersList> li = DaoOrdersList.getOrdByOrdid(ordid);
                    for (PojoOrdersList p : li) {
                        if (p != null) {
                            DaoProducts.updateStock(p.getPrdid(), p.getPrdqty(), "inc");
                        }
                    }

                    DaoOrdersStatus.updateOrderStatus(new PojoOrdersStatus(ordid, 1, sts.getOrdarrivalat(), sts.getAccepttime(), sts.getDeliverytime(), "5", sts.getAcceptedname(), sts.getAcceptedcontact()));

                    out.println("Order is canceled successfully");
                }
            }

            String trkord = request.getParameter("trkdata");
            if (trkord != null && trkord.length() > 0) {
                PojoOrdersStatus pojo = DaoOrdersStatus.getOrderStatusByOrdId(Integer.parseInt(trkord));
                String text = "null";
                if (pojo != null) {
                    String accpetedname = pojo.getAcceptedname();
                    String accpetedstatus = pojo.getAcceptstatus();
                    String diliverytime = pojo.getDeliverytime();
                    String acceptedcontact = pojo.getAcceptedcontact();
                    String orderarrivalat = pojo.getOrdarrivalat();
                    String accepttime = pojo.getAccepttime();
                    String pin = pojo.getPin();
                    text = accpetedname + "@" + accpetedstatus + "@" + diliverytime + "@" + acceptedcontact + "@" + orderarrivalat + "@" + pin + "@" + accepttime;
                }
                System.out.println(text);
                response.setContentType("text/plain");  // Set content type of the response so that jQuery knows what it can expect.
                response.setCharacterEncoding("UTF-8"); // You want world domination, huh?
                response.getWriter().write(text);
            }
        }
    }

// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(OrderListUpdate.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(OrderListUpdate.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
