
package server;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import db.travelDao;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpSession;

//@WebServlet("/login")
public class loginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)throws ServletException, IOException 
    {
        int uid=0;
        
            String name=req.getParameter("username");
            String pass=req.getParameter("password");
            travelDao obj=new travelDao();
            if(obj.check(name, pass))
            {
                HttpSession session=req.getSession();
                session.setAttribute("username",name);
                session.setAttribute("password",pass);
                session.setAttribute("uid",uid);
                res.sendRedirect("main.jsp");
                
            }
            else
            {
                res.sendRedirect("loginPage.jsp");
            }
        }
      
    }



