package myservalate;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import javaClass.user;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 * Servlet implementation class retreave
 */
@WebServlet("/retreave")
public class retreave extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session session= sessionFactory.openSession();
		session.beginTransaction();
		
		
		
		// Query SQL_QUERY =session
		String id=request.getParameter("id");
		System.out.println(id);
				  Query query = session.createQuery("from user where id ='"+id+"'");
		
				  	List<user> users=(List<user>)query.list();
				  	session.getTransaction().commit();
				  	//session.close();
				  	for(user u :users)
				  	{
				  		//System.out.println(u.getName());
				  		//request.setAttribute("name", u.getName());
				  		//request.getRequestDispatcher("retreave.jsp").forward(request, response);
				  		request.setAttribute("name", u);
				  		RequestDispatcher rd = request.getRequestDispatcher("./retrev.jsp");
				  		rd.forward(request, response);
				  		
				  	}
				  	session.close();
	}

}
