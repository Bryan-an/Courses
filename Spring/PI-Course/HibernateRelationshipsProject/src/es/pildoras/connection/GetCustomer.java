package es.pildoras.connection;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class GetCustomer {

	public static void main(String[] args) {
		SessionFactory myFactory = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Customer.class)
				.addAnnotatedClass(CustomerDetails.class).buildSessionFactory();

		Session mySession = myFactory.openSession();

		try {
			mySession.beginTransaction();

			// Get CustomerDetails
			CustomerDetails customerDetails = mySession.get(CustomerDetails.class, 1);

			System.out.println(customerDetails);
			System.out.println(customerDetails.getTheCustomer());
			System.out.println("Now we're going to delete in cascade");

			mySession.delete(customerDetails);
			mySession.getTransaction().commit();

		} catch (Exception ex1) {
			ex1.printStackTrace();
		} finally {
			mySession.close();
			myFactory.close();
		}
	}

}
