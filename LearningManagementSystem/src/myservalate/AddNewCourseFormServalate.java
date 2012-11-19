package myservalate;

import java.io.IOException;

import javaClass.AddNewCourseForm;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 * Servlet implementation class AddNewCourseFormServalate
 */
@WebServlet("/AddNewCourseFormServalate")
public class AddNewCourseFormServalate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		String CourseName=request.getParameter("CourseName");
		String Description=request.getParameter("Description");
		String CourseKey=request.getParameter("CourseKey");
		
		HttpSession session2=request.getSession(); 
		String teacher= (String) session2.getAttribute("SavedUserName");
		 
		AddNewCourseForm NewCourse=new AddNewCourseForm();
		NewCourse.setCourseName(CourseName);
		NewCourse.setDescription(Description);
		NewCourse.setCourseKey(CourseKey);
		NewCourse.setTeacher1(teacher);
		NewCourse.setT_Id(Integer.parseInt(session2.getAttribute("UserId").toString()));
		
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session session= sessionFactory.openSession();
		session.beginTransaction();
		session.save(NewCourse);

		session.getTransaction().commit();
		RequestDispatcher rd = request.getRequestDispatcher("CreateCourseLink.jsp");
  		rd.forward(request, response);
		
	}
		
	

}
