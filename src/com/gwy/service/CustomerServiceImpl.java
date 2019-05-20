package com.gwy.service;

import com.gwy.dao.CustomerDao;
import com.gwy.domain.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("CustomerService")
@Transactional
public class CustomerServiceImpl implements CustomerService{
    //注解注入CustomerDao
    @Autowired
    private CustomerDao customerDao;

    @Override
    public List<Customer> getAllCustomers() {
        List<Customer> allCustomers = this.customerDao.getAllCustomers();
        return allCustomers;
    }

    @Override
    public void deleteCustomers(String id) {
        this.customerDao.deleteCustomers(Integer.parseInt(id));
    }

    @Override
    public void addCustomers(Customer customer) {
        this.customerDao.addCustomers(customer);
    }

    @Override
    public Customer getCustomersWithId(String id) {
        Customer customer = this.customerDao.getCustomersWithId(id);
        return customer;
    }

    @Override
    public void updateCustomers(Customer customer) {
        this.customerDao.updateCustomers(customer);
    }

}
