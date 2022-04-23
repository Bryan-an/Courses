package academy.digitallab.store.customer.service;

import academy.digitallab.store.customer.entity.Customer;
import academy.digitallab.store.customer.entity.Region;

import java.util.List;

public interface CustomerService {

    public List<Customer> findCustomerAll();

    public List<Customer> findCustomerByRegion(Region region);

    public Customer createCustomer(Customer customer);

    public Customer updateCustomer(Customer customer);

    public Customer deleteCustomer(Customer customer);

    public Customer getCustomer(Long id);
}
