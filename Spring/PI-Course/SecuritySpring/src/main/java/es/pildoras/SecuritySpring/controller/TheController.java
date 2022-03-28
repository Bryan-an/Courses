package es.pildoras.SecuritySpring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TheController {

	@GetMapping("/")
	public String showStart() {
		return "start";
	}
}
