package DAOs;

import POJOs.PojoOrders;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DaoOrders {

    private static Connection conn = null;

    /* seprate function to establish connection */
    private static Connection getConnection() {

        try {
            Class.forName("com.mysql.jdbc.Driver");

            conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/supermartjava?user=root");

        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DaoStore.class.getName()).log(Level.SEVERE, null, ex);
        }

        return conn;
    }

    /* get all store from the stores table */
    public static List getOrders() throws SQLException {
        String sql = "SELECT * FROM products ORDER BY RAND()";
        List<PojoOrders> orders = new ArrayList();
        PojoOrders pojo = null;

        conn = getConnection();
        PreparedStatement st;
        try {
            st = conn.prepareStatement(sql);
            ResultSet row = st.executeQuery();
            while (row.next()) {
                pojo = new PojoOrders();
                pojo.setOrdid(row.getInt("ordid"));
                pojo.setStrid(row.getInt("strid"));
                pojo.setCstmid(row.getInt("cstmid"));
                pojo.setPaymentmethod(row.getString("paymentmethod"));
                pojo.setOrdtotalbill(row.getInt("ordertotalbill"));
                orders.add(pojo);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DaoStore.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            conn.close();
        }
        return orders;
    }

    public static PojoOrders getOrdersBy(int strid, int cstmid) throws SQLException {
        String sql = "SELECT * FROM orders WHERE strid = ? and cstmid = ?";
        PojoOrders pojo = null;

        conn = getConnection();
        PreparedStatement st;
        try {
            st = conn.prepareStatement(sql);
            st.setInt(1, strid);
            st.setInt(2, cstmid);
            ResultSet row = st.executeQuery();
            if (row.next()) {
                pojo = new PojoOrders();
                pojo.setOrdid(row.getInt("ordid"));
                pojo.setStrid(row.getInt("strid"));
                pojo.setCstmid(row.getInt("cstmid"));
                pojo.setPaymentmethod(row.getString("paymentmethod"));
                pojo.setOrdtotalbill(row.getInt("ordtotalbill"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DaoStore.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            conn.close();
        }
        return pojo;
    }

    public static int updateTotal(int ordid, int total) throws SQLException {
        String sql = "UPDATE orders SET ordtotalbill =? WHERE ordid = ?";
        PojoOrders pojo = null;
        int row = 0;
        conn = getConnection();
        PreparedStatement st;
        try {
            st = conn.prepareStatement(sql);
            st.setInt(1, total);
            st.setInt(2, ordid);
            row = st.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(DaoStore.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            conn.close();
        }
        return row;
    }

    public static List<PojoOrders> getOrdersBy(int cstmid) throws SQLException {
        String sql = "SELECT * FROM orders WHERE cstmid = ?";
        PojoOrders pojo = null;
        List<PojoOrders> list = new ArrayList();
        conn = getConnection();
        PreparedStatement st;
        try {
            st = conn.prepareStatement(sql);
            st.setInt(1, cstmid);
            ResultSet row = st.executeQuery();
            while (row.next()) {
                pojo = new PojoOrders();
                pojo.setOrdid(row.getInt("ordid"));
                pojo.setStrid(row.getInt("strid"));
                pojo.setCstmid(row.getInt("cstmid"));
                pojo.setPaymentmethod(row.getString("paymentmethod"));
                pojo.setOrdtotalbill(row.getInt("ordtotalbill"));
                list.add(pojo);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DaoStore.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            conn.close();
        }
        return list;
    }
    
    public static List<PojoOrders> getOrdersByStrid(int strid) throws SQLException {
        String sql = "SELECT * FROM orders WHERE strid = ?";
        PojoOrders pojo = null;
        List<PojoOrders> list = new ArrayList();
        conn = getConnection();
        PreparedStatement st;
        try {
            st = conn.prepareStatement(sql);
            st.setInt(1, strid);
            ResultSet row = st.executeQuery();
            while (row.next()) {
                pojo = new PojoOrders();
                pojo.setOrdid(row.getInt("ordid"));
                pojo.setStrid(row.getInt("strid"));
                pojo.setCstmid(row.getInt("cstmid"));
                pojo.setPaymentmethod(row.getString("paymentmethod"));
                pojo.setOrdtotalbill(row.getInt("ordtotalbill"));
                list.add(pojo);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DaoStore.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            conn.close();
        }
        return list;
    }

    public static PojoOrders getOrdersByOrdid(int ordid) throws SQLException {
        String sql = "SELECT * FROM orders WHERE ordid = ?";
        PojoOrders pojo = null;
        conn = getConnection();
        PreparedStatement st;
        try {
            st = conn.prepareStatement(sql);
            st.setInt(1, ordid);
            ResultSet row = st.executeQuery();
            if (row.next()) {
                pojo = new PojoOrders();
                pojo.setOrdid(row.getInt("ordid"));
                pojo.setStrid(row.getInt("strid"));
                pojo.setCstmid(row.getInt("cstmid"));
                pojo.setPaymentmethod(row.getString("paymentmethod"));
                pojo.setOrdtotalbill(row.getInt("ordtotalbill"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DaoStore.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            conn.close();
        }
        return pojo;
    }

    public static void deleteOrderById(int ordid) throws SQLException {
        String sql = "DELETE FROM orders WHERE ordid = ?";
        conn = getConnection();
        PreparedStatement st;
        try {
            st = conn.prepareStatement(sql);
            st.setInt(1, ordid);
            st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DaoStore.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            conn.close();
        }
    }

    public static void insertOrder(PojoOrders pojo) throws SQLException {

        String sql = "INSERT INTO orders (strid, cstmid, paymentmethod, ordtotalbill) VALUES (?,?,?,?)";

        conn = getConnection();
        PreparedStatement st;
        try {
            st = conn.prepareStatement(sql);
            st.setInt(1, pojo.getStrid());
            st.setInt(2, pojo.getCstmid());
            st.setString(3, pojo.getPaymentmethod());
            st.setInt(4, pojo.getOrdtotalbill());
            st.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(DaoStore.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            conn.close();
        }
    }

    public static int getLastInsertedData() throws SQLException {
        String sql = "SELECT ordid FROM orders WHERE ordid = (SELECT MAX(ordid) FROM orders)";
        conn = getConnection();
        int ordid = 0;
        PreparedStatement st;
        try {
            st = conn.prepareStatement(sql);

            ResultSet row = st.executeQuery();
            if (row.next()) {
                ordid = row.getInt("ordid");
            }
        } catch (SQLException ex) {
            Logger.getLogger(DaoStore.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            conn.close();
        }
        return ordid;
    }
}
