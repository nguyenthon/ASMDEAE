/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package deae.controller;

import com.opensymphony.xwork2.ActionSupport;
import deae.biz.LocationManagerBean;
import deae.entity.Location;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

/**
 *
 * @author Thon Nguyen
 */
public class LocationAction extends ActionSupport {

    LocationManagerBean locationManagerBean = lookupLocationManagerBeanBean();

    private String name;
    private String address;

    private List<Location> listAll;

    public LocationAction() {
    }

    public String execute() throws Exception {
        Location l = new Location();
        l.setName(name);
        l.setAddress(address);
        locationManagerBean.creatLocation(l);
        listAll =locationManagerBean.getAllLocation();
        return SUCCESS;
    }

    private LocationManagerBean lookupLocationManagerBeanBean() {
        try {
            Context c = new InitialContext();
            return (LocationManagerBean) c.lookup("java:global/ASMDEAE/LocationManagerBean!deae.biz.LocationManagerBean");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

    public List<Location> getListAll() {
        return listAll;
    }

    public void setListAll(List<Location> listAll) {
        this.listAll = listAll;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

}
