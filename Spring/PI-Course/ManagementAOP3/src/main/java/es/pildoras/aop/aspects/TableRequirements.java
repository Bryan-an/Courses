package es.pildoras.aop.aspects;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

@Aspect
@Component
@Order(2)
public class TableRequirements {
	@Before("es.pildoras.aop.aspects.LoginWithAspect.forCustomers()")
	public void tableRequirements() {
		System.out.println("There are less than 3000 records in the table. "
				+ "You can insert the new customer");
	}
}
