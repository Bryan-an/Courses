package pildoras.es.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@org.springframework.stereotype.Controller
@RequestMapping("/customer")
public class Controller {

	@RequestMapping("/list")
	public String listCustomers(Model theModel) {
		return "list-customers";
	}
}
