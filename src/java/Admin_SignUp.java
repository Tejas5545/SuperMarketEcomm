
import DAOs.DaoAdminUser;
import DAOs.DaoServicer;
import DAOs.DaoShopkeeper;
import POJOs.PojoAdminUser;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns = {"/Admin_SignUp"})
public class Admin_SignUp extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String name = request.getParameter("adminname");
            String email = request.getParameter("adminemail").toLowerCase();
            String contact = request.getParameter("admincontact");
            String password = request.getParameter("adminpwd").toLowerCase();
            String usertype = request.getParameter("admintype").toLowerCase();
            String address = request.getParameter("adminaddress").toLowerCase();

            PojoAdminUser pojo = DaoAdminUser.getAdminBy(usertype, email);
            HttpSession session = request.getSession();
            out.println(pojo);
            if (pojo != null) {
                int adid = pojo.getAdid();
                if(usertype.equals("shopkeeper") && DaoShopkeeper.getShopkeeperById(adid)==null){
                    DaoShopkeeper.insertAdminId(adid);
                    System.out.println("add shopkeeper");
                } else if (usertype.equals("servicer") && DaoServicer.getServicerById(adid)==null){
                    DaoServicer.inserteAdminId(adid);
                    System.out.println("add servicer");
                } else{
                    System.out.println("No data");
                }
                session.setAttribute("info", "Admin Already Exists..do login..");
                session.setAttribute("email", pojo.getAdemail());
            } else {
                
                DaoAdminUser.insertAdmin(new PojoAdminUser(name, email, contact, usertype, password, address));
                out.println("User Inserted Successfully");
                int adid = DaoAdminUser.getLastInsertedData();
                if (usertype.equals("shopkeeper")) {
                   DaoShopkeeper.insertAdminId(adid);
                   System.out.println("Shopkeeper Inserted");
                } else if (usertype.equals("servicer")) {
                   DaoServicer.inserteAdminId(adid);
                   System.out.println("Inserted serviser");
                } else {
                    System.out.println("Invalid Admin Type");
                }
                session.setAttribute("info", "Admin Register successfully");
                session.setAttribute("email", email);
            }
            session.setAttribute("admintype",usertype);
            response.sendRedirect("admin-login-register.jsp");
        } catch (SQLException ex) {
            Logger.getLogger(Admin_SignUp.class.getName()).log(Level.SEVERE, null, ex);
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
        processRequest(request, response);
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
        processRequest(request, response);
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
