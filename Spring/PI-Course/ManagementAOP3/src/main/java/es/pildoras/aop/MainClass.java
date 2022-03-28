package es.pildoras.aop;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import es.pildoras.aop.services.MeasurementService;

public class MainClass {

	public static void main(String[] args) {
		// Read Spring configuration
		AnnotationConfigApplicationContext context =
				new AnnotationConfigApplicationContext(Configuration.class);

		// Get the bean of the Spring container
//		CustomerDAO theCustomer =
//				context.getBean("customerDAO", CustomerDAO.class);
//
//		try {
//			boolean myParam = false;
//
//			theCustomer.findCustomers(myParam);
//		} catch (Exception myEx) {
//			System.out.println("Exception throwing from main class");
//			System.out.println(myEx.getMessage());
//		}
//
//		System.out.println("The program execution would continue here");

		MeasurementService theService =
				context.getBean("measurementService", MeasurementService.class);

		System.out.println("Calling getService() method");

		String data = theService.getService();

		System.out.println("Method return: " + data);

		// Close the context
		context.close();
	}

}
