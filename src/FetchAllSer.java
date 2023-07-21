

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import p2.Addstubean;
import p2.UpdateBean;

/**
 * Servlet implementation class for Servlet: FetchAllSer
 *
 */
 public class FetchAllSer extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public FetchAllSer() {
		super();
	}   	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		FetchAllAction o=new FetchAllAction();
		List<UpdateBean> list=o.FetchData();
		request.setAttribute("li", list);
		RequestDispatcher r=getServletContext().getRequestDispatcher("/Fetchall.jsp");
		r.forward(request, response);
	}  	  	  	    
}