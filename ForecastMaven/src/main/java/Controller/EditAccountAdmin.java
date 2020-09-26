package Controller;

import DAO.DBConnector;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Model.Administrator;
import DAO.DBManager;
import DAO.MongoDBManager;
import javax.servlet.annotation.WebServlet;
/**
 *
 */
@WebServlet(name = "EditAccountAdmin", urlPatterns = {"/EditAccountAdmin"})
   
public class EditAccountAdmin extends HttpServlet {
    
            //private DBConnector Connector;
            //private DBManager Query;
    
    
    MongoDBManager MongoManager = new MongoDBManager();
    
     @Override   
     protected void doPost(HttpServletRequest request, HttpServletResponse response)   throws ServletException, IOException {       
             //1- retrieve the current session
             HttpSession session = request.getSession();
             
             int userId = Integer.parseInt(request.getParameter("userId"));
             String firstname= request.getParameter("firstname");
             String lastname = request.getParameter("lastname");
             String email= request.getParameter("email");
             String password= request.getParameter("password");
             
             
             Administrator admin = new Administrator (userId, password, email, firstname, lastname);
            
        if(admin != null)
        {
            session.setAttribute("admin", admin);
            MongoManager.updateAdmin(userId, password, email, firstname, lastname);//run query
            session.setAttribute("updated"," : Upadte was Successful");
            request.getRequestDispatcher("308_account_management_admin.jsp").include(request,response);
        }
        else
        {
            session.setAttribute("updated"," : Upadte was NOT Successful");
            request.getRequestDispatcher("308_account_management_admin.jsp").include(request,response);
                            
        }
                     
        response.sendRedirect("308_account_management_admin.jsp");
     }
}