package myservalate;

import java.io.IOException;
import java.io.PrintStream;

 import javaClass.user;
import java.sql.*;
import java.util.List;

import javaClass.AddNewCourseForm;
import javaClass.RegisterCourse;
import javaClass.RegisterUser;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 * Servlet implementation class StudentFormServalate
 */
@WebServlet("/StudentFormServalate")
public class StudentFormServalate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentFormServalate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @param out 
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response, PrintStream out) throws ServletException, IOException {
		// TODO Auto-generated method stub
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session session= sessionFactory.openSession();
		session.beginTransaction();
		
		// Query SQL_QUERY =session
		
		
		
		HttpSession session1=request.getSession();
		HttpSession session2=request.getSession();
		
		 	String id=request.getParameter("CourseId");
		 	System.out.println(session1.getAttribute("UserId"));
		 	System.out.println(id);
			 
		 	
		 	Query query1 = session.createQuery("from RegisterCourse , where UserId ='"+session1.getAttribute("UserId")+"' and UserId ='"+request.getParameter("CourseId")+"' ");
		 	@SuppressWarnings("unchecked")
			List<RegisterCourse > rcourse=(List<RegisterCourse >)query1.list();
		  	session.getTransaction().commit();
		  
		  	System.out.println(rcourse.get(0).getIdRegisterCourse());
		  	
		  	if(rcourse.size()<0)
		  	{
		  			
		  		RequestDispatcher rd = request.getRequestDispatcher("RegisterCourse.jsp");
		  		rd.forward(request, response);
		  		
		  	}
		  	else
		  	{
		  		RequestDispatcher rd = request.getRequestDispatcher("StudentGetResoursesAndUploadLinks.jsp");
		  		rd.forward(request, response);
		  		
		  	}
		  	
		  
			  		
	}	 

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}
}
