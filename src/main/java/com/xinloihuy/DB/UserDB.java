package com.xinloihuy.DB;
import java.sql.*;
import java.sql.*;
import java.util.ArrayList;
import com.xinloihuy.model.User;
import com.xinloihuy.DB.*;

public class UserDB {
    public static int insert(User user) throws SQLException {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();
        PreparedStatement ps = null;
        String query = "insert into users (firstName, lastName, email) values (?, ?, ?)";
        try {
            ps = conn.prepareStatement(query);
            ps.setString(1, user.getFirstName());
            ps.setString(2, user.getLastName());
            ps.setString(3, user.getEmail());
            return ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            return 0;
        }
        finally {
            pool.freeConnection(conn);
            DBUtil.closePreparedStatement(ps);
        }
    }

    public static int update(User user) throws SQLException {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();
        PreparedStatement ps = null;
        String query = "update users set firstName = ?, lastName = ? where email = ?";
        try {
            ps = conn.prepareStatement(query);
            ps.setString(1, user.getFirstName());
            ps.setString(2, user.getLastName());
            ps.setString(3, user.getEmail());
            return ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            return 0;
        }
        finally {
            pool.freeConnection(conn);
            DBUtil.closePreparedStatement(ps);
        }
    }

    public static int delete(User user) throws SQLException {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();
        PreparedStatement ps = null;
        String query = "delete from users where email = ?";
        try {
            ps = conn.prepareStatement(query);
            ps.setString(1, user.getEmail());
            return ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
            return 0;
        }
        finally {
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(conn);
        }
    }

    public static boolean emailExists(String email) throws SQLException {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "select * from users where email = ?";
        try {
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            return rs.next();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        finally {
            DBUtil.closePreparedStatement(ps);
            DBUtil.closeResultSet(rs);
            pool.freeConnection(conn);
        }
    }

    public static User select(String email) throws SQLException {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "select * from users where email = ?";
        try {
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            User user = null;
            if (rs.next()) {
                user = new User();
                user.setFirstName(rs.getString("firstName"));
                user.setLastName(rs.getString("lastName"));
                user.setEmail(rs.getString("email"));
            }
            return user;
        } catch (SQLException e) {
            System.out.println(e);
            return null;
        }
        finally {
            DBUtil.closePreparedStatement(ps);
            DBUtil.closeResultSet(rs);
            pool.freeConnection(conn);
        }
    }

    public static ArrayList<User> selectUsers() throws SQLException {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection conn = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "select * from users";
        try {
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            ArrayList<User> users = new ArrayList<>();
            while (rs.next()) {
                User user = new User();
                user.setFirstName(rs.getString("firstName"));
                user.setLastName(rs.getString("lastName"));
                user.setEmail(rs.getString("email"));
                users.add(user);
            }
            return users;
        } catch (SQLException e) {
            System.out.println(e);
            return null;
        }
    }

}
