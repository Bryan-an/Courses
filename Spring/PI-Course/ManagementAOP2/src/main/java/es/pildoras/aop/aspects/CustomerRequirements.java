package es.pildoras.aop.aspects;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

@Aspect
@Component
@Order(1)
public class CustomerRequirements {
	@Before("es.pildoras.aop.aspects.LoginWithAspect.forCustomers()")
	public void customerRequirements() {
		System.out.println(
				"The customer meets the requirements to be inserted in the DB");
	}
}
