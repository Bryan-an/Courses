package es.pildoras.aop.aspects;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

import es.pildoras.aop.Customer;

@Aspect
@Component
@Order(3)
public class LoginWithAspect {

	// @Pointcut("execution(public * insertCustomer(..))")
	@Pointcut("execution(* es.pildoras.aop.dao.*.*(..))")
	public void forCustomers() {
	}

	@Before("forCustomers()")
	public void beforeInsertCustomer(JoinPoint myJoin) {
		System.out.println("The user is logged");
		System.out.println("The profile to insert customers is correct");
		Object[] arguments = myJoin.getArgs();

		for (Object temp : arguments) {
			if (temp instanceof Customer) {
				Customer theCustomer = (Customer) temp;
				System.out.println("Customer name: " + theCustomer.getName());
				System.out.println("Customer type: " + theCustomer.getType());
			}
		}
	}

}
