package demo6.service;

import demo6.entity.Customer;

import java.util.List;

/**
 * Created by maxa on 1/4/2018.
 */
public interface CustomerService {
    public List<Customer> getCustomers();

    public void saveCustomer(Customer customer);

    public Customer getCustomer(String id);

    public void deleteCustomer(String id);
}
