package es.pildoras.spring.mvc;

import javax.validation.constraints.Email;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import es.pildoras.spring.mvc.customvalidations.PostalCodeMadrid;

public class Student {

	@NotNull
	@Size(min = 2, message = "Campo requerido")
	private String name;

	private String lastName;
	private String optional;
	private String cityStudies;
	private String languagesStudent;

	@Min(value = 10, message = "Ages under 10 are not allowed")
	@Max(value = 100, message = "Ages over 100 are not allowed")
	private int age;

	@Email
	private String email;

//	@Pattern(regexp = "[0-9]{5}", message = "Enter 5 digits")
	@PostalCodeMadrid
	private String postalCode;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getOptional() {
		return optional;
	}

	public void setOptional(String optional) {
		this.optional = optional;
	}

	public String getCityStudies() {
		return cityStudies;
	}

	public void setCityStudies(String cityStudies) {
		this.cityStudies = cityStudies;
	}

	public String getLanguagesStudent() {
		return languagesStudent;
	}

	public void setLanguagesStudent(String languageStudent) {
		this.languagesStudent = languageStudent;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPostalCode() {
		return postalCode;
	}

	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}

}
