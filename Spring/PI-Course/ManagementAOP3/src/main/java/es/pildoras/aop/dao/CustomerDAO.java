package es.pildoras.aop.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

import es.pildoras.aop.Customer;

@Component
public class CustomerDAO {
	public void insertCustomer(Customer theCustomer, String type) {
		System.out.println("Work done OK. Customer inserted successfully");
	}

	public List<Customer> findCustomers(boolean myParam) {

		if (myParam)
			throw new RuntimeException(
					"Error!! The request could not be processed");

		List<Customer> customersList = new ArrayList<>();

		// simulate customers returned by the BD
		Customer cl1 = new Customer("María", "Normal");
		Customer cl2 = new Customer("Ana", "Normal");
		Customer cl3 = new Customer("Sandra", "VIP");
		Customer cl4 = new Customer("Antonio", "Normal");

		// add customers to the list
		customersList.add(cl1);
		customersList.add(cl2);
		customersList.add(cl3);
		customersList.add(cl4);

		System.out.println("Finished execution of the findCustomers method");

		return customersList;
	}

}
