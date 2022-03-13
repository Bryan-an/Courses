package es.pildoras.connection;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class ConsultCustomer {
	public static void main(String[] args) {
		SessionFactory myFactory = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Customers.class)
				.buildSessionFactory();

		Session mySession = myFactory.openSession();

		try {
			// begin session
			mySession.beginTransaction();

			// customer query
			List<Customers> theCustomers = mySession.createQuery("from Customers").getResultList();

			goThroughConsultedCustomers(theCustomers);

			// query: give the Gómez
			theCustomers = mySession.createQuery("from Customers cu where cu.lastNames = 'Gómez'").getResultList();

			// show the Gómez
			goThroughConsultedCustomers(theCustomers);

			// show those who live in Gran Vía or have the last name Delgado
			theCustomers = mySession
					.createQuery("from Customers cu where cu.lastNames='Delgado' or cu.address='Gran Vía'")
					.getResultList();

			goThroughConsultedCustomers(theCustomers);

			// commit
			mySession.getTransaction().commit();

			// close session
			mySession.close();
		} finally {
			mySession.close();
		}
	}

	private static void goThroughConsultedCustomers(List<Customers> theCustomers) {
		for (Customers aCustomer : theCustomers) {
			System.out.println(aCustomer);
		}
	}
}
