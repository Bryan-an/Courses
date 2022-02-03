package es.pildoras.IoC;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class UseDemoSingletonPrototype {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		// Load configuration XML
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext2.xml");

		// Beans request to Spring container
		SecretaryEmployee Maria = context.getBean("mySecretaryEmployee", SecretaryEmployee.class);
		SecretaryEmployee Pedro = context.getBean("mySecretaryEmployee", SecretaryEmployee.class);
		SecretaryEmployee Manolo = context.getBean("mySecretaryEmployee", SecretaryEmployee.class);
		SecretaryEmployee Juan = context.getBean("mySecretaryEmployee", SecretaryEmployee.class);
		SecretaryEmployee Ana = context.getBean("mySecretaryEmployee", SecretaryEmployee.class);

		System.out.println(Maria);
		System.out.println(Pedro);
		System.out.println(Manolo);
		System.out.println(Juan);
		System.out.println(Ana);

//		if (Maria == Pedro)
//			System.out.println("They point the same object");
//		else
//			System.out.println("They're not the same object");
	}

}
