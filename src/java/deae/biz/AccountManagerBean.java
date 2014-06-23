
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package deae.biz;

import deae.da.AccountJpaController;
import deae.da.exceptions.RollbackFailureException;
import deae.entity.Account;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Resource;
import javax.ejb.Stateless;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceUnit;
import javax.transaction.UserTransaction;

/**
 *
 * @author Thon Nguyen
 */
@Stateless
@TransactionManagement(TransactionManagementType.BEAN)
public class AccountManagerBean {

    @PersistenceUnit(unitName = "ASMDEAEPU")
    private EntityManagerFactory emf;
    @Resource
    private UserTransaction transaction;
    private AccountJpaController accountJpaController;

    public AccountJpaController getAccountJpaController() {
        if (accountJpaController == null) {
            accountJpaController = new AccountJpaController(transaction, emf);
        }
        return accountJpaController;
    }

    public Account getAllUser() {
        return getAccountJpaController().getAll();
    }

    public Account getAccountByID(String username, String password) {
        return getAccountJpaController().getUser(username, password);
    }

    public boolean createAccount(Account ac) {
        try {
            getAccountJpaController().create(ac);
        } catch (Exception ex) {
        }
        return true;
    }

}
