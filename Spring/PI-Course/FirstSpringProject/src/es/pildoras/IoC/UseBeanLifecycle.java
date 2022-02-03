package es.pildoras.IoC;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class UseBeanLifecycle {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		// Load configuration XML
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext3.xml");

		// Get the bean
		Employees Juan = context.getBean("myEmployee", Employees.class);
		System.out.println(Juan.getReport());

		// Close context
		context.close();
	}

}
