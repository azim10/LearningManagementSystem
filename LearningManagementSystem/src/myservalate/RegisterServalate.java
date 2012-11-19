package myservalate;

import java.io.IOException;
import javaClass.RegisterUser;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 * Servlet implementation class RegisterServalate
 */
@WebServlet("/RegisterServalate")
public class RegisterServalate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		

		String EmailId=request.getParameter("EmailId");
		String UserName=request.getParameter("UserName");
		String option=request.getParameter("option");
		String Password=request.getParameter("Password");
		String ConfirmPassword=request.getParameter("ConfirmPassword");
		String FirstName=request.getParameter("FirstName");
		String LastName=request.getParameter("LastName");
		String City=request.getParameter("City");
		
		System.out.println(option);
		RegisterUser register=new RegisterUser();
		
		register.setEmail_id(EmailId);
		register.setuName(UserName);
		register.setType(option);
		register.setPassword(Password);
		register.setCPassword(ConfirmPassword);
		register.setfName(FirstName);
		register.setlName(LastName);
		register.setCity(City);
		
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session session= sessionFactory.openSession();
		session.beginTransaction();
		session.save(register);

		session.getTransaction().commit();
		RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
  		rd.forward(request, response);
	}

}
