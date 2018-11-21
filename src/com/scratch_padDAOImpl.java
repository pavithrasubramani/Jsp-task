package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
public class scratch_padDAOImpl {

    public static Connection getCon() throws ClassNotFoundException, SQLException
    {
    	
        try{
        	
       Class.forName("com.mysql.jdbc.Driver");
          }
         catch(Exception e) {e.printStackTrace();
          }
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/task","root","pass123$");
        return con;
    }

     public int insert(scratch s)
     {
    	 
         Connection con;
         try {
             con = getCon();
    	String q = "INSERT INTO scratch_pad (ID, TITLE, DESCRIPTION,USER_ID) VALUES (?,?,?,?)";
        PreparedStatement ps = con.prepareStatement(q);
        ps.setInt(1, s.getId());
        ps.setString(2, s.getTitle());
        ps.setString(3,s.getDescription());
        ps.setInt(4, s.getUserid());
        int n=ps.executeUpdate();
        if (n!=0)  
        {
        	System.out.println("success");
        }
         }
         catch (Exception e) {

             System.out.println(e);
         } 
         return 0;
     }
     
     public  int select(scratch s)
     {
    	 Connection con; 	 
     try {
     con=getCon();
     String qu = "select id,title,description,user_id from scratch_pad";
     PreparedStatement ps= con.prepareStatement(qu);
     ResultSet rs = ps.executeQuery();
     while (rs.next()) {
			System.out.println(
					"id: " + rs.getInt(1) + " Title: " + rs.getString(2) + " Description: " + rs.getString(3)+ " UserId: " + rs.getInt(4));
		}
	} catch (Exception e) {
		e.printStackTrace();
	} 
      return 0;
     }
     
     }
