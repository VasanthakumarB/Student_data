

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import p2.Addstubean;
import p2.UpdateBean;

/**
 * Servlet implementation class for Servlet: UpdateSer
 *
 */
 public class UpdateSer extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public UpdateSer() {
		super();
	}   	 	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String Name=request.getParameter("name");
		String Age=request.getParameter("age");
		String Email=request.getParameter("email");
		String phoneno=request.getParameter("phoneno");
		String Date=request.getParameter("doj");
		int stuid=Integer.valueOf(request.getParameter("stuid"));
		Addstubean o=new Addstubean();
		o.setName(Name);
		o.setAge(Age);
		o.setEmail(Email);
		o.setPhoneno(phoneno);
		o.setDate(Date);
		o.setStuid(stuid);
		UpdateAction l=new UpdateAction();
		boolean status=l.UpdateDetails(o);
		if(status){
			RequestDispatcher r=getServletContext().getRequestDispatcher("/UpdateSuccess.jsp");
			r.forward(request, response);
		}else{
			response.sendRedirect("Unsuccess.jsp");
		}
		
	}   	  	    
}