package myservalate;

import java.io.IOException;
import javaClass.Faculty_gives_submittion_link;

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
 * Servlet implementation class facuty_gives_submittion_link_servalte
 */
@WebServlet("/Faculty_gives_submittion_link_servalte")
public class Faculty_gives_submittion_link_servalte extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session1=request.getSession();
		String TopicName=request.getParameter("TopicName");
		
		
		String Description=request.getParameter("Description");
		String DateOfAnnouncing=request.getParameter("DateOfAnnouncing");
		String DateOfSubmission=request.getParameter("DateOfSubmission");
		String DisableLinkAfter=request.getParameter("DisableLinkAfter");
		String size=request.getParameter("size");
		
		Faculty_gives_submittion_link SubmitLink=new Faculty_gives_submittion_link();
		SubmitLink.setTeacherId(Integer.parseInt(session1.getAttribute("UserId").toString()));
		SubmitLink.setCourseId(Integer.parseInt( session1.getAttribute("CId").toString()));
		SubmitLink.setTopicName(TopicName);
		SubmitLink.setDiscription(Description);
		SubmitLink.setDateOfAnnouncing(DateOfAnnouncing);
		SubmitLink.setDateOfRealise(DateOfSubmission);
		SubmitLink.setDisabelLinkAfter(DisableLinkAfter);
		SubmitLink.setMaximumSize(size);
		
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session session= sessionFactory.openSession();
		session.beginTransaction();
		session.save(SubmitLink);
		session.getTransaction().commit();
		
		request.setAttribute("CourseId",Integer.parseInt( session1.getAttribute("CId").toString()));
		RequestDispatcher rd = request.getRequestDispatcher("Faculty_assignment_resource_form.jsp");
  		rd.forward(request, response);
		
		
	
		
	}

}
