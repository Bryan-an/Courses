package es.pildoras.IoC;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class UseEmployees {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		// Create objects of Employee type
//		Employees employee1 = new ManagerEmployee();

		// Use of created objects
//		System.out.println(employee1.getTasks());

		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		ManagerEmployee Juan = context.getBean("myEmployee", ManagerEmployee.class);
		System.out.println(Juan.getTasks());
		System.out.println(Juan.getReport());
		System.out.println(Juan.getEmail());
		System.out.println(Juan.getCompanyName());

//		SecretaryEmployee Maria = context.getBean("mySecretaryEmployee", SecretaryEmployee.class);
//		SecretaryEmployee Pablo = context.getBean("mySecretaryEmployee", SecretaryEmployee.class);
//
//		System.out.println(Maria.getTasks());
//		System.out.println(Maria.getReport());
//		System.out.println("Email: " + Maria.getEmail());
//		System.out.println(Maria.getCompanyName());
//
//		System.out.println("Pablo email: " + Pablo.getEmail());

		context.close();
	}

}
