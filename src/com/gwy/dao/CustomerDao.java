package com.gwy.dao;

import com.gwy.domain.Customer;
import java.util.List;

public interface CustomerDao {
    //查询所有的客户
    public List<Customer> getAllCustomers();

    //添加客户到数据库中
    public void addCustomers(Customer customer);

    //根据id从数据库中删除一个客户
    public void deleteCustomers(int id);

    //传入一个客户，到数据库中根据id更新客户
    public void updateCustomers(Customer customer);

    //根据id查询一个客户
    public Customer getCustomersWithId(String id);

    //获取总条数
    public Long getCount();

    //获取所有客户列表
    public List<Customer> getPageData(int index, Integer currentCount);


}
