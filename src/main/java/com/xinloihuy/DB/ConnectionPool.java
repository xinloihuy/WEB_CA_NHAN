package com.xinloihuy.DB;
import java.sql.*;
import javax.sql.DataSource;
import javax.naming.InitialContext;
import javax.naming.NamingException;

public class ConnectionPool {
    private static ConnectionPool connectionPool = null;
    private static DataSource ds = null;
    private ConnectionPool() {
        try {
            InitialContext context = new InitialContext();
            ds = (DataSource) context.lookup("java:comp/env/jdbc/murach");
        } catch (NamingException e) {
            throw new RuntimeException(e);
        }
    }

    public static synchronized ConnectionPool getInstance() {
        if (connectionPool == null) {
            connectionPool = new ConnectionPool();
        }
        return connectionPool;
    }

    public Connection getConnection() throws SQLException {
        try {
            return ds.getConnection();
        } catch (SQLException e) {
            System.out.println(e);
            return null;
        }
    }

    public void freeConnection(Connection connection) {
        try {
            connection.close();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }





}
