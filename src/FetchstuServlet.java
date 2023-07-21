

import java.io.IOException;
import java.sql.*;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import p2.Addstubean;
import p2.UpdateBean;

/**
 * Servlet implementation class for Servlet: FetchstuServlet
 *
 */
 public class FetchstuServlet extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public FetchstuServlet() {
		super();
	}   	 	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try{
		String name=request.getParameter("name");
		FetchstuAction o=new FetchstuAction();
		ResultSet rs=o.Fetchdetails(name);
			
			if(rs.next()){
				UpdateBean a=new UpdateBean();
			a.setName(rs.getString("name"));
			a.setAge(rs.getString("age"));
			a.setEmail(rs.getString("email"));
			a.setPhoneno(rs.getString("phoneno"));
			Date date=rs.getDate("doj");
            SimpleDateFormat simpleDateFormat=new SimpleDateFormat("dd/MMM/yyyy");
            String date1=simpleDateFormat.format(date);
            a.setDate(date1);
			a.setStuid(rs.getInt("stuid"));
			request.setAttribute("k", a);
			RequestDispatcher r=getServletContext().getRequestDispatcher("/FetchSuccess.jsp");
			r.forward(request, response);
			}else{
			response.sendRedirect("FetchUnsuccess.jsp");
		}
		}catch(SQLException e){
			e.printStackTrace();
		}
		}
	}   	  	    