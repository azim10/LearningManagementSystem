package myservalate;

import java.io.IOException;
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
 * Servlet implementation class RegisterCourseServlet
 */
@WebServlet("/RegisterCourseServlet")
public class RegisterCourseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session session= sessionFactory.openSession();
		session.beginTransaction();
		
		String courseKey=request.getParameter("courseKey");
		
		HttpSession session1=request.getSession(true);
		
		
		String re=(String) session1.getAttribute("CId");
  		
	//int Uid=Integer.parseInt((session2.getAttribute("UserId")));
		//int CId=(Integer)(session2.getAttribute("CId"));
		
		
		
			Query query = session.createQuery("from AddNewCourseForm where CourseKey ='"+courseKey+"' and  CourseId='"+session1.getAttribute("CId")+"'");
			
			@SuppressWarnings("unchecked")
			List<AddNewCourseForm> rgcourse=(List<AddNewCourseForm>)query.list();
		  	
		  	
		  	if(rgcourse.size()>0)
		  	{
		  		
		  		RegisterCourse addcourse=new RegisterCourse();
		  		//System.out.println(session1.getAttribute("UserId"));
		  		addcourse.setUserId(Integer.parseInt(session1.getAttribute("UserId").toString()));
		  		//System.out.println(session1.getAttribute("UserId"));
		  		addcourse.setCourseId(Integer.parseInt( session1.getAttribute("CId").toString()));
		  		
		  		session.save(addcourse);

				session.getTransaction().commit();
				
		  		RequestDispatcher rd = request.getRequestDispatcher("./StudentGetResoursesAndUploadLinks.jsp");
		  		rd.forward(request, response);
		  	}
		  	else
		  	{
		  		
		  		RequestDispatcher rd = request.getRequestDispatcher("./RegisterCourse1.jsp?msg=Invalid Course Key");
		  		rd.forward(request, response);
		  	}
		  	
		
		  		
		
			
		
		
	}

}
