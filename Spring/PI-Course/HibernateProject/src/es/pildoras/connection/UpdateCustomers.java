package es.pildoras.connection;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class UpdateCustomers {

	public static void main(String[] args) {
		SessionFactory myFactory = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Customers.class)
				.buildSessionFactory();

		Session mySession = myFactory.openSession();

		try {

			// int customerId = 2;

			mySession.beginTransaction();

			// Customers myCustomer = mySession.get(Customers.class, customerId);
			// myCustomer.setName("Juana");

//			mySession.createQuery("update Customers set lastNames='Dominguez' where lastNames like 'D%'")
//					.executeUpdate();

			mySession.createQuery("delete Customers where address = 'Goya'").executeUpdate();
			mySession.getTransaction().commit();

			System.out.println("Customer deleted successfully in DB");

			mySession.close();
		} finally {
			mySession.close();
		}
	}

}
