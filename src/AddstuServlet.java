

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import p2.Addstubean;

/**
 * Servlet implementation class for Servlet: AddstuServlet
 *
 */
 public class AddstuServlet extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public AddstuServlet() {
		super();
	}   	 	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name=request.getParameter("name");
		String age=request.getParameter("age");
		String email=request.getParameter("email");
		String phoneno=request.getParameter("phoneno");
		String doj=request.getParameter("Date");
		Addstubean o=new Addstubean();
		o.setName(name);
		o.setAge(age);
		o.setEmail(email);
		o.setPhoneno(phoneno);
		o.setDate(doj);
		AddStudentAction re=new AddStudentAction();
		boolean status=re.Studetails(o);
		if(status){
			RequestDispatcher n=getServletContext().getRequestDispatcher("/AddStudent.jsp");
			n.forward(request,response);
		}else{
		   response.sendRedirect("Unsuccess.jsp");

		}
	}   	  	    
}