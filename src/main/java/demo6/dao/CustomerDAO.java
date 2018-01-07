package demo6.dao;

import demo6.entity.Customer;

import java.util.List;

/**
 * Created by maxa on 1/3/2018.
 */
public interface CustomerDAO {

    public List<Customer> getCustomers();

    public void saveCustomer(Customer customer);

    public Customer getCustomer(String id);

    public void deleteCustomer(String id);
}
