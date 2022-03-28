package es.pildoras.aop.aspects;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class LoginWithAspect {

	// @Pointcut("execution(public * insertCustomer(..))")
	@Pointcut("execution(* es.pildoras.aop.dao.*.*(..))")
	private void forCustomers() {
	}

	// Pointcut for getters
	@Pointcut("execution(* es.pildoras.aop.dao.*.get*(..))")
	private void forGetters() {
	}

	// Pointcut for setters
	@Pointcut("execution(* es.pildoras.aop.dao.*.set*(..))")
	private void forSetters() {
	}

	// Pointcut combination
//	@Pointcut("forCustomers() && !(forGetters() || forSetters())")
//	private void pakageExceptGetterSetter() {
//	}

	// Pointcut combination
	@Pointcut("forCustomers() && !forSetters()")
	private void pakageExceptSetter() {
	}

//	@Before("forCustomers()")
	@Before("pakageExceptSetter()")
	public void beforeInsertCustomer() {
		System.out.println("The user is logged");
		System.out.println("The profile to insert customers is correct");
	}

//	@Before("forCustomers()")
	public void customerRequirements() {
		System.out.println(
				"The customer meets the requirements to be inserted in the DB");
	}

//	@Before("forCustomers()")
	public void tableRequirements() {
		System.out.println("There are less than 3000 records in the table. "
				+ "You can insert the new customer");
	}
}
