package es.pildoras.connection;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class InsertCustomer {
	public static void main(String[] args) {
		SessionFactory myFactory =
				new Configuration().configure("hibernate.cfg.xml")
						.addAnnotatedClass(Customer.class)
						.addAnnotatedClass(CustomerDetails.class)
						.addAnnotatedClass(Order.class).buildSessionFactory();

		Session mySession = myFactory.openSession();

		try {
			Customer customer1 = new Customer("Ana", "Marín", "Gran Vía");
			CustomerDetails customerDetails1 = new CustomerDetails(
					"www.pildorasinformaticas.es", "73434", "Third Customer");

			// associate the objects
			customer1.setCustomerDetails(customerDetails1);

			mySession.beginTransaction();

			// This save the information in both related tables.
			mySession.save(customer1);
			mySession.getTransaction().commit();

			System.out.println("Record inserted successfully in DB");

			mySession.close();
		} finally {
			myFactory.close();
		}
	}
}
