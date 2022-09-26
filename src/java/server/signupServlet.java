/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package server;

import db.travelDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class signupServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
    {
        try {
            String nam=req.getParameter("nam");
//        String email=req.getParameter("email");
        String passwor=req.getParameter("passwor");
        travelDao obj=new travelDao();
        obj.register(nam,passwor);
        res.sendRedirect("loginPage.jsp");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(signupServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    } 
            
        
}