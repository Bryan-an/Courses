package es.pildoras.connection;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class DeleteCustomer {
	public static void main(String[] args) {
		SessionFactory myFactory = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Customer.class)
				.addAnnotatedClass(CustomerDetails.class).buildSessionFactory();

		Session mySession = myFactory.openSession();

		try {
			mySession.beginTransaction();
			Customer theCustomer = mySession.get(Customer.class, 3);

			if (theCustomer != null) {
				mySession.delete(theCustomer);
			}

			mySession.getTransaction().commit();

			if (theCustomer != null)
				System.out.println("Record deleted successfully in DB");
			else
				System.out.println("Nothing to delete");

			mySession.close();
		} finally {
			myFactory.close();
		}
	}
}
