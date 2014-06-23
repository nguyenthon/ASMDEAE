/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package deae.biz;

import deae.da.LocationJpaController;
import deae.da.exceptions.RollbackFailureException;
import deae.entity.Location;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Resource;
import javax.ejb.Stateless;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceUnit;
import javax.transaction.TransactionManager;
import javax.transaction.UserTransaction;

/**
 *
 * @author Thon Nguyen
 */
@Stateless
@TransactionManagement(TransactionManagementType.BEAN)
public class LocationManagerBean {

    @PersistenceUnit(unitName = "ASMDEAEPU")
    private EntityManagerFactory emf;
    @Resource
    private UserTransaction transaction;
    private LocationJpaController controller;
    public LocationJpaController getController(){
        if (controller==null) {
            controller = new LocationJpaController(transaction, emf);
        }
        return controller;
    }
    public List<Location> getAllLocation(){
    return getController().getAll();
    }
    public boolean creatLocation(Location l){
        try {
            getController().create(l);
        } catch (Exception ex) {
        
        }
        return true;
    }
}
