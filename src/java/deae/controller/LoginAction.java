/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package deae.controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import deae.biz.AccountManagerBean;
import deae.entity.Account;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.persistence.EntityManager;
import javax.transaction.UserTransaction;

/**
 *
 * @author Thon Nguyen
 */
public class LoginAction extends ActionSupport {
    AccountManagerBean accountManagerBean = lookupAccountManagerBeanBean();
    
    private String username;
    private String password;
    private Map<String,Object> session;
    public LoginAction() {
    }
    
    @Override
    public String execute() throws Exception {
        if (accountManagerBean.getAccountByID(username, password)!=null) {
             Account acc=accountManagerBean.getAccountByID(username, password);
              ActionContext.getContext().getSession().put("user", username);
             return SUCCESS;
        }else{
           return ERROR;
    }
        
    }
     public String logout(){
        session = ActionContext.getContext().getSession();
        if (session.get("user")!=null) {
            session.put("user", null);
        }
        return SUCCESS;
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

    private AccountManagerBean lookupAccountManagerBeanBean() {
        try {
            Context c = new InitialContext();
            return (AccountManagerBean) c.lookup("java:global/ASMDEAE/AccountManagerBean!deae.biz.AccountManagerBean");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }
    
}
