/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.myapp.tags;

import com.myapp.Constans;
import com.myapp.bin.Reservation.FareFamily;
import java.io.IOException;
import com.myapp.dao.DAOFactory;
import com.myapp.dao.IDAO;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import org.jdom.JDOMException;
/**
 *
 * @author user
 */
public class FareFamilyTag extends SimpleTagSupport{
    private String typeFamily;

    public String getTypeFamily() {
        return typeFamily;
    }

    public void setTypeFamily(String typeFamily) {
        this.typeFamily = typeFamily;
    }    
       
    @Override
    public void doTag() throws JspException, IOException {
        try {
            IDAO dao = DAOFactory.getInstance();
            FareFamily fareFamily = dao.getFareFamily(Constans.FILE_NAME);
            getJspContext().setAttribute(getTypeFamily(), fareFamily);
        } catch (JDOMException ex) {
            Logger.getLogger(ReservationTag.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
