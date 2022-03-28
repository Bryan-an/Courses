package pildoras.es.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import pildoras.es.controller.entity.Customer;

@Repository
public class CustomerDAOClass implements CustomerDAO {

	@Override
	@Transactional
	public List<Customer> getCustomers() {
		// Get the session
		Session mySession = sessionFactory.getCurrentSession();

		// Create the query
		Query<Customer> myQuery =
				mySession.createQuery("from Customer", Customer.class);

		// Execute the query and return the results
		List<Customer> customers = myQuery.getResultList();

		return customers;
	}

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@Transactional
	public void insertCustomer(Customer theCustomer) {
		// Get the session
		Session mySession = sessionFactory.getCurrentSession();

		// Insert the damn customer at least
		// mySession.save(theCustomer);
		mySession.saveOrUpdate(theCustomer);
	}

	@Override
	@Transactional
	public Customer getCustomer(int id) {

		// Get the session
		Session mySession = sessionFactory.getCurrentSession();

		// Get selected customer's data
		Customer theCustomer = mySession.get(Customer.class, id);

		return theCustomer;
	}

	@Override
	@Transactional
	public void deleteCustomer(int id) {
		// Get the session
		Session mySession = sessionFactory.getCurrentSession();

		// Delete the customer from the DB using its corresponding id as
		// criteria
		Query query = mySession
				.createQuery("delete from Customer where id=:customerId");
		query.setParameter("customerId", id);
		query.executeUpdate();

	}

}
