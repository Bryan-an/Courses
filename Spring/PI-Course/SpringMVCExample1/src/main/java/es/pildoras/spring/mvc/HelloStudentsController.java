package es.pildoras.spring.mvc;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@org.springframework.stereotype.Controller
@RequestMapping("/main")
public class HelloStudentsController {

	@RequestMapping("/showForm")
	public String showForm() { // Provide the form
		return "HelloStudentsForm";
	}

	@RequestMapping("/processForm")
	public String processForm() {
		return "HelloStudentsSpring";
	}

	@RequestMapping("/processForm2")
//	public String anotherProcessForm(HttpServletRequest request, Model model) {
	public String anotherProcessForm(@RequestParam("studentName") String name, Model model) {

//		String name = request.getParameter("studentName");
		name += " is the best student";
		String finalMessage = "Who is the best student? " + name;

		// Adding info to the model
		model.addAttribute("clearMessage", finalMessage);

		return "HelloStudentsSpring";
	}
}
