
package server;

import db.travelDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class mainInfo extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)throws ServletException, IOException
    {
        HttpSession session=req.getSession(false);
        String name=(String)session.getAttribute("username");
        String time=req.getParameter("time");
        String date=req.getParameter("date");
        String srctodest=req.getParameter("sd");
        String pass=req.getParameter("password");
        long  mobile=Long.parseLong(req.getParameter("mobileNo")); //check all spelling 
        String myArr=req.getParameter("manthan");
        String[] ar=myArr.split(",");
        int arr[]=new int[ar.length];
        for(int i=0;i<ar.length;i++)
        {
            arr[i]=Integer.parseInt(ar[i]);
        }
        travelDao obj1=new travelDao();
        int uid=obj1.srno(name, pass);
        try {
            obj1.insertInfo(name,time,date,srctodest,mobile,arr);
            } catch (ClassNotFoundException ex) {
            Logger.getLogger(mainInfo.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        res.sendRedirect("thankyou.jsp");
             
    }
}



