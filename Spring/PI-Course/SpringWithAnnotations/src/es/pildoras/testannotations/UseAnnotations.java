package es.pildoras.testannotations;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class UseAnnotations {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		// Read configuration xml
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");

		// Ask for a bean from the container
		Employees Antonio = context.getBean("experiencedCommercial", Employees.class);

		// Use the bean
		System.out.println(Antonio.getReport());
		System.out.println(Antonio.getTasks());

		// Close the bean
		context.close();
	}

}
