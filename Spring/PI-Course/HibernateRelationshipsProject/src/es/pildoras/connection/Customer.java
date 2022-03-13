package es.pildoras.connection;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "[customer]")
public class Customer {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "[id]")
	private int id;

	@Column(name = "[name]")
	private String name;

	@Column(name = "[last_name]")
	private String lastName;

	@Column(name = "[address]")
	private String address;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "[id]")
	private CustomerDetails customerDetails;

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "customer",
			cascade = { CascadeType.PERSIST, CascadeType.MERGE,
					CascadeType.DETACH, CascadeType.REFRESH })
	private List<Order> orders;

	public Customer() {
	}

	public Customer(String name, String lastName, String address) {
		this.name = name;
		this.lastName = lastName;
		this.address = address;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public CustomerDetails getCustomerDetails() {
		return customerDetails;
	}

	public void setCustomerDetails(CustomerDetails customerDetails) {
		this.customerDetails = customerDetails;
	}

	public List<Order> getOrders() {
		return orders;
	}

	public void setOrders(List<Order> orders) {
		this.orders = orders;
	}

	@Override
	public String toString() {
		return "Customer [id=" + id + ", name=" + name + ", lastName="
				+ lastName + ", address=" + address + "]";
	}

	public void addOrders(Order theOrder) {
		if (orders == null)
			orders = new ArrayList<>();

		theOrder.setCustomer(this);
		orders.add(theOrder);
	}

}
