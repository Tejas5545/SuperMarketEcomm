package DAOs;

import POJOs.PojoCategory;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DaoCategory {
    
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
    public static List<PojoCategory> getAllCat() throws SQLException {
        String sql = "SELECT * FROM category";
        List<PojoCategory> cat = new ArrayList();
        PojoCategory pojo = null;

        conn = getConnection();
        PreparedStatement st;
        try {
            st = conn.prepareStatement(sql);
            ResultSet row = st.executeQuery();
            while (row.next()) {
                pojo = new PojoCategory();
                pojo.setCatid(row.getInt(1));
                pojo.setCatname(row.getString(2));
                cat.add(pojo);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DaoStore.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            conn.close();
        }
        return cat;
    }
    
    public static PojoCategory getCatByName(String cat) throws SQLException {
        String sql = "SELECT * FROM category WHERE category = ?";
        PojoCategory pojo = null;

        conn = getConnection();
        PreparedStatement st;
        try {
            st = conn.prepareStatement(sql);
            st.setString(1, cat);
            ResultSet row = st.executeQuery();
            if (row.next()) {
                pojo = new PojoCategory();
                pojo.setCatid(row.getInt(1));
                pojo.setCatname(row.getString(2));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DaoStore.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            conn.close();
        }
        return pojo;
    }
    
    public static int insertCat(String cat) throws SQLException {
        String sql = "INSERT INTO category (category) VALUES (?)";
        int row = 0;

        conn = getConnection();
        PreparedStatement st;
        try {
            st = conn.prepareStatement(sql);
            st.setString(1, cat);
            row = st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DaoStore.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            conn.close();
        }
        return row;
    }
}