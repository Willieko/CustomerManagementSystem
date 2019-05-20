package com.gwy.service;

import com.gwy.domain.Customer;

import java.util.List;

public interface CustomerService {
    //获取所有客户列表
    public List<Customer> getAllCustomers();

    //删除客户
    public void deleteCustomers(String id);

    //新增客户
    public void addCustomers(Customer customer);

    //根据ID查询客户
    public Customer getCustomersWithId(String id);

    //更新客户信息
    public void updateCustomers(Customer customer);


}
