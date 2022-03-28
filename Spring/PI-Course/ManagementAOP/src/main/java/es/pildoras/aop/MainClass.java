package es.pildoras.aop;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import es.pildoras.aop.dao.CustomerDAO;
import es.pildoras.aop.dao.CustomerVIPDAO;

public class MainClass {

	public static void main(String[] args) {
		// Read Spring configuration
		AnnotationConfigApplicationContext context =
				new AnnotationConfigApplicationContext(Configuration.class);

		// Get the bean of the Spring container
		CustomerDAO theCustomer =
				context.getBean("customerDAO", CustomerDAO.class);

		CustomerVIPDAO theCustomerVIP =
				context.getBean("customerVIPDAO", CustomerVIPDAO.class);

		// Call the method
		Customer cl1 = new Customer();
		theCustomer.insertCustomer(cl1, "Normal"); // this is the method name
													// that must match with the
													// @Before annotation

		theCustomerVIP.insertCustomerVIP(); // this is the method name that must
											// match with the @Before annotation

		theCustomer.setNormalCustomerCode("4324324324");
		theCustomer.setNormalCustomerFeedback("positive");

		String customerCode = theCustomer.getNormalCustomerCode();
		String customerFeedback = theCustomer.getNormalCustomerFeedback();

		// Close the context
		context.close();

	}

}
