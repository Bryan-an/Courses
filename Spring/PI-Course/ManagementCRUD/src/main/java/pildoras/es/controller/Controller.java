package pildoras.es.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pildoras.es.controller.entity.Customer;
import pildoras.es.dao.CustomerDAO;

@org.springframework.stereotype.Controller
@RequestMapping("/customer")
public class Controller {

	@RequestMapping("/list")
	public String listCustomers(Model theModel) {
		// get the customers from the DAO
		List<Customer> theCustomers = customerDAO.getCustomers();

		// Add customers to the model
		theModel.addAttribute("customers", theCustomers);

		return "list-customers";
	}

	@RequestMapping("/showFormAdd")
	public String showFormAdd(Model theModel) {
		// Bind customer data
		Customer theCustomer = new Customer();

		theModel.addAttribute("customer", theCustomer);

		return "formCustomer";
	}

	@PostMapping("/insertCustomer")
	public String
			insertCustomer(@ModelAttribute("customer") Customer theCustomer) {
		// Insert Customer in DB
		customerDAO.insertCustomer(theCustomer);

		return "redirect:/customer/list";
	}

	@GetMapping("/showFormUpdate")
	public String showFormUpdate(@RequestParam("customerId") int id,
			Model theModel) {

		// Get the customer
		Customer theCustomer = customerDAO.getCustomer(id);

		// Set the customer as model attribute
		theModel.addAttribute("customer", theCustomer);

		// Send to the form

		return "formCustomer";
	}

	@GetMapping("/delete")
	public String deleteCustomer(@RequestParam("customerId") int id) {

		// Delete the customer
		customerDAO.deleteCustomer(id);

		// Redirect to the customers list

		return "redirect:/customer/list";
	}

	@Autowired
	private CustomerDAO customerDAO;
}
