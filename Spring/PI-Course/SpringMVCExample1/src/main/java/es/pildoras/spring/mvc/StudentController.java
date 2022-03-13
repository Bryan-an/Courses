package es.pildoras.spring.mvc;

import javax.validation.Valid;

import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@org.springframework.stereotype.Controller
@RequestMapping("/student")
public class StudentController {

	@InitBinder
	public void myBinder(WebDataBinder binder) {
		StringTrimmerEditor trimBlanks = new StringTrimmerEditor(true);

		binder.registerCustomEditor(String.class, trimBlanks);
	}

	@RequestMapping("/showForm")
	public String showForm(Model model) {

		Student theStudent = new Student();

		model.addAttribute("theStudent", theStudent);

		return "studentRegisterForm";
	}

	@RequestMapping("/processForm")
	public String processForm(@Valid @ModelAttribute("theStudent") Student theStudent, BindingResult validationResult) {

		if (validationResult.hasErrors()) {
			return "studentRegisterForm";
		} else {
			return "confirmRegisterStudent";
		}

	}
}
