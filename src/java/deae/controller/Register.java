/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package deae.controller;

import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import deae.biz.AccountManagerBean;
import deae.entity.Account;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

/**
 *
 * @author Thon Nguyen
 */
public class Register extends ActionSupport {

    AccountManagerBean accountManagerBean = lookupAccountManagerBeanBean();

    private String username;
    private String password;
    private String address;
    private int phone;
    private int age;
    public Register() {
    }

    @Override
    public String execute() throws Exception {
        Account acc = new Account();
        acc.setUsername(username);
        acc.setPassword(password);
        acc.setAddress(address);
        acc.setPhone(phone);
        acc.setAge(age);
        accountManagerBean.createAccount(acc);

        return SUCCESS;
    }

    private AccountManagerBean lookupAccountManagerBeanBean() {
        try {
            Context c = new InitialContext();
            return (AccountManagerBean) c.lookup("java:global/ASMDEAE/AccountManagerBean!deae.biz.AccountManagerBean");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }
    
}
