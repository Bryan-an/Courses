package es.pildoras.spring.mvc.customvalidations;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import javax.validation.Constraint;
import javax.validation.Payload;

@Constraint(validatedBy = PostalCodeMadridValidation.class) // future class that will contain the validation logic
@Target({ ElementType.METHOD, ElementType.FIELD }) // validation target, methods or fields in this case
@Retention(RetentionPolicy.RUNTIME) // check the application in runtime
public @interface PostalCodeMadrid {

	// Define default postal code
	public String value() default "28";

	// Define the error message
	public String message() default "The postal code must start with 28";

	// Define the groups
	Class<?>[] groups() default {};

	// Define the payloads
	Class<? extends Payload>[] payload() default {};
}
