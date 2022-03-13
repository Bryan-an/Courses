package es.pildoras.connection;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class DeleteCustomerDetails {
	public static void main(String[] args) {
		SessionFactory myFactory = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Customer.class)
				.addAnnotatedClass(CustomerDetails.class).buildSessionFactory();

		Session mySession = myFactory.openSession();

		try {
			mySession.beginTransaction();
			CustomerDetails customerDetails = mySession.get(CustomerDetails.class, 4);
			customerDetails.getTheCustomer().setCustomerDetails(null);

			if (customerDetails != null) {
				mySession.delete(customerDetails);
			}

			mySession.getTransaction().commit();

			if (customerDetails != null)
				System.out.println("Record deleted successfully in DB");
			else
				System.out.println("Nothing to delete");

			mySession.close();
		} finally {
			myFactory.close();
		}
	}
}
