/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.myapp.dao;

/**
 *
 * @author user
 */
public class DAOFactory {
    public static IDAO getInstance(){
        return new DaoXML();
    }
}
