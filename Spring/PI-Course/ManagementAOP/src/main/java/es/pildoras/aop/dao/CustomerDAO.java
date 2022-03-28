package es.pildoras.aop.dao;

import org.springframework.stereotype.Component;

import es.pildoras.aop.Customer;

@Component
public class CustomerDAO {
	public void insertCustomer(Customer theCustomer, String type) {
		System.out.println("Work done OK. Customer inserted successfully");
	}

	public String getNormalCustomerFeedback() {
		System.out.println("Getting customer feedback");
		return normalCustomerFeedback;
	}

	public void setNormalCustomerFeedback(String normalCustomerFeedback) {
		System.out.println("Setting customer feedback");
		this.normalCustomerFeedback = normalCustomerFeedback;
	}

	public String getNormalCustomerCode() {
		System.out.println("Getting customer code");
		return normalCustomerCode;
	}

	public void setNormalCustomerCode(String normalCustomerCode) {
		System.out.println("Setting customer code");
		this.normalCustomerCode = normalCustomerCode;
	}

	private String normalCustomerFeedback;
	private String normalCustomerCode;
}
