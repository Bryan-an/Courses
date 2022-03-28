package es.pildoras.aop.aspects;

import java.util.List;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Around;
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

	@Around("execution(* es.pildoras.aop.services.*.getService(..))")
	public Object executeService(ProceedingJoinPoint thePoint)
			throws Throwable {

		System.out.println("--------Start of actions before call----------");
		long start = System.currentTimeMillis();

		Object result = thePoint.proceed(); // thePoint points the target
											// method.

		System.out.println("-------------Tasks after the call------------");

		long end = System.currentTimeMillis();

		long duration = end - start;

		System.out.println("The method took " + (duration / 1000) + " seconds");

		return result;
	}

	@AfterReturning(
			pointcut = "execution(* es.pildoras.aop.dao.CustomerDAO.findCustomers(..))",
			returning = "customersList")
	public void taskAfterFindingCustomers(List<Customer> customersList) {
		for (Customer c : customersList) {
			if (c.getType() == "VIP") {
				dataProcessingAfterReturning(customersList);

				System.out.println("There are customers VIP in the list. Name: "
						+ c.getName());
			}
		}
	}

	@AfterThrowing(
			pointcut = "execution(* es.pildoras.aop.dao.CustomerDAO.findCustomers(..))",
			throwing = "theException")
	public void
			processingDataAfterExceptionFindCustomers(Throwable theException) {
		System.out.println(
				"Here the tasks after the exception would be executed automatically");
	}

	@After("execution(* es.pildoras.aop.dao.CustomerDAO.findCustomers(..))")
	public void executingTasksWithAndWithoutException(JoinPoint thePoint) {
		System.out.println("Executing tasks always!!!!");
	}

	private void dataProcessingAfterReturning(List<Customer> customersList) {
		for (Customer c : customersList) {
			String processingData = "V.I.P. " + c.getName().toUpperCase();
			c.setName(processingData);
		}
	}

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
