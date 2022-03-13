package es.pildoras.connection;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

public class GetOrdersCustomer {
	public static void main(String[] args) {
		SessionFactory myFactory =
				new Configuration().configure("hibernate.cfg.xml")
						.addAnnotatedClass(Customer.class)
						.addAnnotatedClass(CustomerDetails.class)
						.addAnnotatedClass(Order.class).buildSessionFactory();

		Session mySession = myFactory.openSession();

		try {

			mySession.beginTransaction();

			// get the customer from the customer table in the database
//			Customer theCustomer = mySession.get(Customer.class, 4);

			Query<Customer> query = mySession.createQuery(
					"SELECT CU FROM Customer CU JOIN FETCH CU.orders WHERE CU.id=:theCustomerId",
					Customer.class);

			query.setParameter("theCustomerId", 4);

			Customer theCustomer = query.getSingleResult();

			System.out.println("Customer: " + theCustomer);

			mySession.getTransaction().commit();
			mySession.close();

			System.out.println("Orders: " + theCustomer.getOrders());

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			mySession.close();
			myFactory.close();
		}
	}
}
