package es.pildoras.spring.mvc.customvalidations;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class PostalCodeMadridValidation implements ConstraintValidator<PostalCodeMadrid, String> {

	private String prefixCodeMadrid;

	@Override
	public void initialize(PostalCodeMadrid theCode) {
		prefixCodeMadrid = theCode.value();
	}

	@Override
	public boolean isValid(String arg0, ConstraintValidatorContext arg1) {
		boolean validCode;

		if (arg0 != null)
			validCode = arg0.startsWith(prefixCodeMadrid);
		else
			return validCode = true;

		return validCode;
	}

}
