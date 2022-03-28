package pildoras.es.dao;

import java.util.List;

import pildoras.es.controller.entity.Customer;

public interface CustomerDAO {
	public List<Customer> getCustomers();

	public void insertCustomer(Customer theCustomer);

	public Customer getCustomer(int id);

	public void deleteCustomer(int id);
}
