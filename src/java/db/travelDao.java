
package db;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletResponse;

public class travelDao {
     String sql="select * from  login where  username=? and pswd=?";
    
    String url="jdbc:mysql://localhost:3306/travels";
    String username="root";
    String password="1025";
    public String abc;
    public String pqr;
    int uid=0;
    String uidd;
    
    public int srno(String name, String pswd)
    {
        
         try {
             
             
             Class.forName("com.mysql.cj.jdbc.Driver");
             Connection con=DriverManager.getConnection(url,username,password);
             String sq="Select uid from login where  username=? and pswd=?";
             PreparedStatement st=con.prepareStatement(sq);
             st.setString(1,name);
             st.setString(2, pswd);
             
             
             ResultSet rs=st.executeQuery();
//             uid=rs.getInt(1);
                
             

         } catch (ClassNotFoundException | SQLException ex) {
             Logger.getLogger(travelDao.class.getName()).log(Level.SEVERE, null, ex);
         }
               return uid;      
    }
    public boolean check(String name, String pswd)
    {
        try { 
            
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection(url,username,password);
            PreparedStatement st=con.prepareStatement(sql);
            st.setString(1,name);
            st.setString(2, pswd);
            
            
            ResultSet rs=st.executeQuery();
            

            if(rs.next())
            {

                uidd=rs.getString(1);
                return true;
            }
           
        } catch (Exception ex) {
            Logger.getLogger(travelDao.class.getName()).log(Level.SEVERE, null, ex);           
        }
        
        return false;
    }
    
    
    public void register(String nam,String passwor) throws ClassNotFoundException
        {
            String sql2="insert into login( username,pswd) values(?,?)";
         try {
             Class.forName("com.mysql.cj.jdbc.Driver");
             Connection con=DriverManager.getConnection(url,username,password);
             PreparedStatement st=con.prepareStatement(sql2);
             st.setString(1,nam);
             st.setString(2, passwor);
             st.executeUpdate();
             st.close();
             con.close();
         } catch (SQLException ex) {
             Logger.getLogger(travelDao.class.getName()).log(Level.SEVERE, null, ex);
         }
         
        }
    
    public void insertInfo(String name,String time,String date,String srctodest,Long mobile,int[] arr) throws ClassNotFoundException, IOException
    {
         String sql2="insert into seatsinfo(uid,sourceToDest,date,time) values(?,?,?,?)";

         try {
             Class.forName("com.mysql.cj.jdbc.Driver");
             
             Connection con=DriverManager.getConnection(url,username,password);
             PreparedStatement st=con.prepareStatement(sql2);
             st.setInt(1, uid);
             st.setString(2,srctodest);
             st.setString(3,date);
             st.setString(4,time);
             st.executeUpdate();
             
//  
             
             st.close();
             con.close();
         } catch (SQLException ex) 
         {
             Logger.getLogger(travelDao.class.getName()).log(Level.SEVERE, null, ex);
         }
//          return uid;
    }
    
      
            
        
    
}
