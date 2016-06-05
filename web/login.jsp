<%-- 
    Document   : login
    Created on : 30.05.2016, 23:53:15
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

    </head>
    <body class="bg-success">
        <h1 class="text-success text-center form-signin-heading"><bean:message key="login.jsp.title"/></h1>
        <div class="container">

            <html:form   action="/login" >
                <h3 class="text-success  text-danger"><bean:write name="LoginForm" property="error" filter="false"/>&nbsp;</h3>
                <div class="form-group">
                    <label class="control-label" for="login"><bean:message key="login.jsp.form.enter.login"/></label>
                    <html:text  value="user" styleClass="form-control" styleId="login" property="login" />

                </div>
                <div class="form-group">
                    <label class="control-label" for="pass"><bean:message key="login.jsp.form.enter.password"/></label>
                    <html:password  styleClass="form-control" styleId="pass" property="password" />
                </div>
                <html:submit styleClass="btn btn-success">
                    <bean:message key="login.jsp.submit.login"/>
                </html:submit>
            </html:form>

        </div>
    </body>
</html>
