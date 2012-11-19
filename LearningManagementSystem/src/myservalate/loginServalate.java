package myservalate;

import java.io.IOException;
import java.util.List;
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
 * Servlet implementation class loginServalate
 */
@WebServlet("/loginServalate")
public class loginServalate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session session= sessionFactory.openSession();
		session.beginTransaction();
		
		// Query SQL_QUERY =session
		String UserName=request.getParameter("UserName");
		String Password=request.getParameter("Password");
		try
		{
			 Query query = session.createQuery("from RegisterUser where uName ='"+UserName+"' and  Password='"+Password+"'");
				
			  
				@SuppressWarnings("unchecked")
				List<RegisterUser> users=(List<RegisterUser>)query.list();
			  	session.getTransaction().commit();
			  	//session.close();
			  	System.out.println(	users.get(0).getIdRegisterUser());
			  
			  
			 	
			  		
			  
			  	if(users.get(0).getuName()==null && users.get(0).getPassword()==null )
		  		{
			  		
		  			
		  		}
			  	else
			  	{
			  		HttpSession session1=request.getSession();
			  		session1.setAttribute("SavedUserName", users.get(0).getfName());
			  		
			  		HttpSession session2=request.getSession();
			  		session2.setAttribute("UserId", users.get(0).getIdRegisterUser());
			  		if(users.get(0).getType().equals("Student"))
			  		{
			  			RequestDispatcher rd = request.getRequestDispatcher("display_courses_list_to_user.jsp");
				  		rd.forward(request, response);
			  		}
			  		else
			  		{
			  			if(users.get(0).getType().equals("Teacher"))
			  			{
			  			RequestDispatcher rd = request.getRequestDispatcher("CreateCourseLink.jsp");
				  		rd.forward(request, response);
			  			}
			  		}
				  	
			  		
			  	}
		}
		catch(Exception e)
		{
			
			  	//System.out.println("login failed");
				
		  		RequestDispatcher rd = request.getRequestDispatcher("./Login.jsp?msg=Invalid Username or Password");
		  		rd.forward(request, response);
		}
		
				 
				 /* 	for(RegisterUser u :users)
				  	{
				  		//System.out.println(u.getName());
				  		//request.setAttribute("name", u.getName());
				  		//request.getRequestDispatcher("retreave.jsp").forward(request, response);
				  		//request.setAttribute("name", u);
				  		
				  		//RequestDispatcher rd = request.getRequestDispatcher("./retrev.jsp");
				  		//rd.forward(request, response);
				  		//System.out.println(u.getuName());
				  		
				  	}
				  	session.close();*/
	}
		
	

}
