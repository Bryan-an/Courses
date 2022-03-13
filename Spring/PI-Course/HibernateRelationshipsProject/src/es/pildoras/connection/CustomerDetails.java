package es.pildoras.connection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "customer_details")
public class CustomerDetails {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;

	@Column(name = "web")
	private String web;

	@Column(name = "phone")
	private String phone;

	@Column(name = "comments")
	private String comments;

	@OneToOne(mappedBy = "customerDetails")
	private Customer theCustomer;

	public CustomerDetails() {
	}

	public CustomerDetails(String web, String phone, String comments) {
		this.web = web;
		this.phone = phone;
		this.comments = comments;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getWeb() {
		return web;
	}

	public void setWeb(String web) {
		this.web = web;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public Customer getTheCustomer() {
		return theCustomer;
	}

	public void setTheCustomer(Customer theCustomer) {
		this.theCustomer = theCustomer;
	}

	@Override
	public String toString() {
		return "CustomerDetails [id=" + id + ", web=" + web + ", phone=" + phone + ", comments=" + comments + "]";
	}
}
