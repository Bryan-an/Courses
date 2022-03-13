package es.pildoras.testannotations;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class UseAnnotations2 {

	public static void main(String[] args) {
		// Read configuration xml
//		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");

		// Read configuration class
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext(EmployeesConfig.class);

		// Ask for a bean from the container
		/*
		 * Employees employee = context.getBean("financialDirector", Employees.class);
		 * Employees employee = context.getBean("financialDirector", Employees.class);
		 * 
		 * System.out.println(employee.getTasks());
		 * System.out.println(employee.getReport());
		 */

		FinancialDirector employee = context.getBean("financialDirector", FinancialDirector.class);

		System.out.println("Director email: " + employee.getEmail());
		System.out.println("Company name: " + employee.getCompanyName());

		// Close the bean
		context.close();
	}
}
