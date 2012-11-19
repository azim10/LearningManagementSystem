package org.Hibernate;




import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import javaClass.user;

public class HibernateTest {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		user u=new user();
		
		u.setName("azim");
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session session= sessionFactory.openSession();
		session.beginTransaction();
		session.save(u);
		session.getTransaction().commit();
		
		
	}

}
