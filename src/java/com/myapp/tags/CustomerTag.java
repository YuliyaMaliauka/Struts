/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.myapp.tags;

import com.myapp.Constans;
import com.myapp.bin.Reservation.Customer;
import com.myapp.dao.DAOFactory;
import com.myapp.dao.IDAO;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import org.jdom.JDOMException;

/**
 *
 * @author user
 */
public class CustomerTag extends SimpleTagSupport{
    private String typeCustomer;

    public String getTypeCustomer() {
        return typeCustomer;
    }

    public void setTypeCustomer(String typeCustomer) {
        this.typeCustomer = typeCustomer;
    }

    
       
    @Override
    public void doTag() throws JspException, IOException {
        try {
            IDAO dao = DAOFactory.getInstance();
            Customer castomer = dao.getCustomer(Constans.FILE_NAME);
            getJspContext().setAttribute(getTypeCustomer(), castomer);
        } catch (JDOMException ex) {
            Logger.getLogger(ReservationTag.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
