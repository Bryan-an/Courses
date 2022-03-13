package es.pildoras.connection;

import java.util.GregorianCalendar;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class CreateOrdersCustomer {
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
			Customer theCustomer = mySession.get(Customer.class, 5);

			// create customer's orders
			Order order1 = new Order(new GregorianCalendar(2020, 7, 5));
			Order order2 = new Order(new GregorianCalendar(120, 5, 3));
			Order order3 = new Order(new GregorianCalendar(120, 7, 2));

			// add created orders to the created customer
			theCustomer.addOrders(order1);
			theCustomer.addOrders(order2);
			theCustomer.addOrders(order3);

			// save the orders in database in order table
			mySession.save(order1);
			mySession.save(order2);
			mySession.save(order3);

			mySession.getTransaction().commit();

			System.out.println("Record inserted successfully in DB");

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			mySession.close();
			myFactory.close();
		}
	}
}
