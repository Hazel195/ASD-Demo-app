/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Controller;

import DAO.DBConnector;
import DAO.DBManager;
import DAO.MongoDBManager;
import Model.Administrator;
import java.io.IOException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author yses9
 */

@WebServlet (name = "AdminLogoutServlet", urlPatterns = {"/AdminLogoutServlet"})
public class AdminLogoutServlet extends HttpServlet {
    //@Override    
    private MongoDBManager Mongo = new MongoDBManager();
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException           
    {
        String logoutDateTime;
        java.util.Date date = new java.util.Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        logoutDateTime = formatter.format(date);
        HttpSession session = request.getSession();
        Administrator admin = (Administrator) session.getAttribute("admin");
        int adminID = admin.getAdminId();
        
        int accesslogId = Mongo.finAdmindAccessLogID(adminID);
        Mongo.storeLogout(accesslogId, logoutDateTime);
        
        session.invalidate();
        response.sendRedirect("index.jsp");
        
        
    }

}