package com.xinloihuy.DB;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.*;
import jakarta.servlet.*;
import java.io.IOException;
import java.sql.*;
import com.xinloihuy.DB.*;

@WebServlet("/gateway")
public class SqlGatewayServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException,RuntimeException {

        String sqlStatement = request.getParameter("sqlStatement").trim();
        String sqlResult = "";
        try {
            ConnectionPool pool = ConnectionPool.getInstance();
            Connection conn = pool.getConnection();
            Class.forName("com.mysql.jdbc.Driver");
            Statement statement = conn.createStatement();
            if (sqlStatement.length() > 5) {
                if (sqlStatement.toLowerCase().startsWith("select")) {
                    ResultSet result = statement.executeQuery(sqlStatement);
                    sqlResult = SQLUtil.getHtmlTable(result);
                    result.close();

                }
                else {
                    int i = statement.executeUpdate(sqlStatement);
                    if (i == 0){
                        sqlResult = "<p>The statement executed successfully!</p>";

                    }
                    else {
                        sqlResult =
                                "<p>The statement executed successfully.<br>"
                                        + i + " row(s) affected.</p>";
                    }
                }
            }

            statement.close();
            conn.close();
        } catch (ClassNotFoundException e) {
            sqlResult = "<p>Error loading the database driver: <br>"
                    + e.getMessage() + "</p>";
        } catch (SQLException e) {
            sqlResult = "<p>Error executing the SQL statement: <br>"
                    + e.getMessage() + "</p>";
        }
        HttpSession session = request.getSession();
        session.setAttribute("sqlResult", sqlResult);
        session.setAttribute("sqlStatement",sqlStatement);
        String url = "/WEB-INF/DB/gateway.jsp";
        request.getRequestDispatcher(url).forward(request, response);
    }
}
