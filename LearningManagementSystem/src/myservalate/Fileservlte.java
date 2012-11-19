package myservalate;

import java.io.DataInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import javaClass.RegisterUser;
import javaClass.UploadAssign;

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
 * Servlet implementation class Fileservlte
 */
@WebServlet("/Fileservlte")
public class Fileservlte extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Fileservlte() {
        super();
        // TODO Auto-generated constructor stub
    }

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
	
		String saveFile="";
		String contentType = request.getContentType();
		if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) {
		DataInputStream in = new DataInputStream(request.getInputStream());
		int formDataLength = request.getContentLength();
		byte dataBytes[] = new byte[formDataLength];
		int byteRead = 0;
		int totalBytesRead = 0;
		while (totalBytesRead < formDataLength) {
		byteRead = in.read(dataBytes, totalBytesRead,formDataLength);
		totalBytesRead += byteRead;
		}
		String file = new String(dataBytes);
		saveFile = file.substring(file.indexOf("filename=\"") + 10);
		saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
		saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
		int lastIndex = contentType.lastIndexOf("=");
		String boundary = contentType.substring(lastIndex + 1,contentType.length());
		int pos;
		pos = file.indexOf("filename=\"");
		pos = file.indexOf("\n", pos) + 1;
		pos = file.indexOf("\n", pos) + 1;
		pos = file.indexOf("\n", pos) + 1;
		int boundaryLocation = file.indexOf(boundary, pos) - 4;
		int startPos = ((file.substring(0, pos)).getBytes()).length;
		int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
		saveFile="C:\\Users\\AZIM\\Desktop\\myfiles\\"+saveFile;
		File f = new File(saveFile);
		FileOutputStream fileOut = new FileOutputStream(f);
		fileOut.write(dataBytes, startPos, (endPos - startPos));
		fileOut.flush();
		fileOut.close();
		
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session session= sessionFactory.openSession();
		session.beginTransaction();
		
		UploadAssign assi=new UploadAssign();
		HttpSession session1=request.getSession();
		
		
		assi.setS_Id(Integer.parseInt(session1.getAttribute("UserId").toString()));
		assi.setC_Id(Integer.parseInt(session1.getAttribute("CId").toString()));
		assi.setSubLink(Integer.parseInt(session1.getAttribute("SLink").toString()));
		assi.setPath(saveFile);
		
		
		
		session.save(assi);
		session.getTransaction().commit();
		RequestDispatcher rd = request.getRequestDispatcher("UploadMsg.jsp");
  		rd.forward(request, response);
		 
			
			
		
	}

}
}
