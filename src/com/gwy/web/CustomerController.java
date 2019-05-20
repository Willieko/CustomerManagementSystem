package com.gwy.web;

import com.gwy.domain.Customer;
import com.gwy.service.CustomerService;
import org.apache.commons.beanutils.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;

@Controller
public class CustomerController {
    //依赖注入
    @Autowired
    private CustomerService customerService;

    //获取所有客户
    @RequestMapping(value ="/getAllCustomers.action")
    public String getCustomer(HttpServletRequest request, HttpServletResponse response, Model model)
            throws Exception{
        // 调用服务层
        try {
            List<Customer> allCustomers = customerService.getAllCustomers();
            // 把数据写到request域
            request.setAttribute("allCustomers", allCustomers);
            // 转发
            return "maincontent.jsp";
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    //删除客户
    @RequestMapping(value ="/deleteCustomers.action")
    public String delCustomer(HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        // 获取当前客户参数ID
        String id = request.getParameter("id");
        try {
            customerService.deleteCustomers(id);
            return "/getAllCustomers.action";
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    //新增用户
    @RequestMapping(value ="/addCustomer.action")
    public String addCustomer(HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        // 获取所有的参数
        Map<String, String[]> parameterMap = request.getParameterMap();
        Customer customer = new Customer();
        try {
            // 把所有的参数封装成对象
            BeanUtils.populate(customer, parameterMap);
            customerService.addCustomers(customer);
            // 跳转列表，取出最新的数据
            return "/getAllCustomers.action";
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }


    // 编辑客户UI
    @RequestMapping(value ="/editUI.action")
    public String editUI(HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        // 获取当前客户参数ID
        String id = request.getParameter("id");
        // 根据传入的ID获取当前商品
        try {
            Customer customer = customerService.getCustomersWithId(id);
            // 把商品写到request域
            request.setAttribute("customer", customer);
            // 转发到Edit.jsp
            return "/Edit.jsp";
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    // 编辑客户
    @RequestMapping(value ="/eidtCustomer.action")
    public String eidtCustomer(HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        // 获取所有的参数
        Map<String, String[]> parameterMap = request.getParameterMap();
        Customer customer = new Customer();
        try {
            // 封装成customer对象
            BeanUtils.populate(customer, parameterMap);
            customerService.updateCustomers(customer);
            return "/getAllCustomers.action";
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
