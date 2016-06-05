/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.myapp.struts;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author user
 */
public class LoginForm extends org.apache.struts.action.ActionForm {

    private String login;
    private String password;
    private String error;

    public String getError() {
        return error;
    }

    public void setError() {
        this.error = "Ошибка ввода данных/Error";
    }

    /**
     * @return
     */
    public String getLogin() {
        return login;
    }

    /**
     * @param string
     */
    public void setLogin(String string) {
        login = string;
    }

    /**
     * @return
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param pass
     */
    public void setPassword(String pass) {
        password = pass;
    }

    /**
     *
     */
    public LoginForm() {
        super();
        // TODO Auto-generated constructor stub
    }

    
    
}
