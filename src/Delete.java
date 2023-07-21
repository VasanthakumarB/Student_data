

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class for Servlet: Delete
 *
 */
 public class Delete extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public Delete() {
		super();
	}   	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name=request.getParameter("stuid");
		//String n1=n.replace("'","");
		//String name=n1;
		System.out.println(name);
		DeleteAction o=new DeleteAction();
		boolean status=o.Deletedetails(name);
		if(status){
			RequestDispatcher r=getServletContext().getRequestDispatcher("/FetchAllSer");
			r.forward(request, response);
		}else{
			response.sendRedirect("Unsuccess.jsp");
		}
	}  	  	  	    
}