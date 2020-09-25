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
import Model.User;
import DAO.DBManager;
import DAO.MongoDBManager;
import javax.servlet.annotation.WebServlet;
/**
 *
 */
@WebServlet(name = "EditAccount", urlPatterns = {"/EditAccount"})
   
public class EditAccount extends HttpServlet {
    
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
             int location = Integer.parseInt(request.getParameter("location"));
             
             
             User user = new User (userId, location, password, email, firstname, lastname);
            
        if(user != null)
        {
            session.setAttribute("user", user);
            MongoManager.updateUser(userId, password, email, firstname, lastname,location);//run query
            session.setAttribute("updated"," : Upadte was Successful");
            request.getRequestDispatcher("301_account_management.jsp").include(request,response);
        }
        else
        {
            session.setAttribute("updated"," : Upadte was NOT Successful");
            request.getRequestDispatcher("301_account_management.jsp").include(request,response);
                            
        }
                     
        response.sendRedirect("301_account_management.jsp");
     }
}