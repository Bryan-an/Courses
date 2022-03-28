package es.pildoras.SecuritySpring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ControllerOwnLogin {
	@GetMapping("/myFormLogin")
	public String showOwnLogin() {
		return "own-login";
	}
}
