package es.pildoras.aop.dao;

import org.springframework.stereotype.Component;

import es.pildoras.aop.Customer;

@Component
public class CustomerDAO {
	public void insertCustomer(Customer theCustomer, String type) {
		System.out.println("Work done OK. Customer inserted successfully");
	}

}
