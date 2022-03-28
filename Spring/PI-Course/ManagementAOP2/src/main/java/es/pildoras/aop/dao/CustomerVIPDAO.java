package es.pildoras.aop.dao;

import org.springframework.stereotype.Component;

@Component
public class CustomerVIPDAO {
	public void insertCustomerVIP() {
		System.out.println("Work done OK. Customer VIP inserted successfully");
	}
}
