package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.xml.internal.bind.v2.schemagen.xmlschema.List;


@WebServlet("/scratchservlet")
public class scratchservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public scratchservlet() {
        super();
        
    }
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    PrintWriter out=response.getWriter();
        int id=Integer.parseInt(request.getParameter("id"));
        String title=request.getParameter("title");
        String description=request.getParameter("desc");
        int userid=Integer.parseInt(request.getParameter("userid"));
          
        
        scratch sc=new scratch();
        sc.setId(id);
        sc.setTitle(title);
        sc.setDescription(description);
        sc.setUserid(userid);
                
       
        scratch_padDAOImpl sp= new scratch_padDAOImpl();
        int insert=sp.insert(sc);
        int select=sp.select(sc); 
        
        
        request.setAttribute("sc",sc);
        request.getRequestDispatcher("/display.jsp").forward(request, response);
    }

    







}

