/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.myapp.dao;

import com.myapp.bin.Reservation;
import com.myapp.bin.Reservation.Customer;
import com.myapp.bin.Reservation.FareFamily;
import java.io.IOException;
import org.jdom.JDOMException;

/**
 *
 * @author user
 */
public interface IDAO {
    Reservation getReservation(String file)throws IOException,JDOMException;
    Customer getCustomer(String file)throws IOException,JDOMException;
    FareFamily getFareFamily(String xmlFileName)throws IOException,JDOMException;
}
