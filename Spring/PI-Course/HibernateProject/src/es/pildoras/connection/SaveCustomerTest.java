package es.pildoras.connection;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class SaveCustomerTest {

	public static void main(String[] args) {
		SessionFactory myFactory = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Customers.class)
				.buildSessionFactory();

		Session mySession = myFactory.openSession();

		try {
			Customers customer1 = new Customers("Sandra", "Delgado", "Goya");
			mySession.beginTransaction();
			mySession.save(customer1);
			mySession.getTransaction().commit();

			System.out.println("Customer inserted successfully in DB");

			// Record reading
			mySession.beginTransaction();

			System.out.println("Record reading with Id: " + customer1.getId());
			Customers insertedCustomer = mySession.get(Customers.class, customer1.getId());
			System.out.println("Record: " + insertedCustomer);

			mySession.getTransaction().commit();

			System.out.println("Finished!");

			mySession.close();
		} finally {
			mySession.close();
		}
	}

}
