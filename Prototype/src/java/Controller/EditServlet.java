package Controller;

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
/**
 *
 * @author bert_
 */
public class EditServlet extends HttpServlet {
    
     @Override   
     protected void doPost(HttpServletRequest request, HttpServletResponse response)   throws ServletException, IOException {       
             //1- retrieve the current session
             HttpSession session = request.getSession();

            // private int userId, locationId;
            //private String user_password, email, firstname, lastname;
             
            int userId = Integer.parseInt(request.getParameter("userId"));
            int locationId= Integer.parseInt(request.getParameter("location"));
            String user_password = request.getParameter("password");
            String email= request.getParameter("email");
            String firstname = request.getParameter("firstname");
            String lastname= request.getParameter("lastname");
 
             User user = new User (userId,locationId,user_password,email,firstname,lastname);
             DBManager manager = (DBManager) session.getAttribute ("manager");
                     try {          
                            if(user != null){
                                session.setAttribute("user",user);
                                manager.updateUser(userId, locationId, user_password, email, firstname, lastname);
                                session.setAttribute("updated","Upadte was Successful");
                                request.getRequestDispatcher("edit.jsp").include(request,response);
                            }else{
                                session.setAttribute("updated","Upadte was NOT Successful");
                                request.getRequestDispatcher("edit.jsp").include(request,response);
                            }
                     } catch (SQLException ex) {           
                           Logger.getLogger(EditServlet.class.getName()).log(Level.SEVERE, null, ex);       
                     }
                     response.sendRedirect("edit.jsp");
     }
}
