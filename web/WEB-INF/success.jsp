<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Success</title>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

    </head>
    <body class="bg-warning">

        <div class="row bg-success">
            <div class="col-md-4"><html:link action="/reservation">
                    <h1 class="text-center text-uppercase">ReservationAction</h1>
                </html:link></div>
            <div class="col-md-4"><html:link action="/customer">
                    <h1 class="text-center text-uppercase">CustomerAction</h1>
                </html:link></div>
            <div class="col-md-4"><html:link action="/family">
                    <h1 class="text-center text-uppercase">FareFamily</h1>
                </html:link></div>

        </div>
        <div>
            <div>
                <h1 class="text-center text-success"> <bean:message key="success.jsp.title"/></h1>
                <h2 class="text-center text-danger"><bean:message key="success.jsp.user"/><bean:write name="LoginForm" property="login" />.</h2>
            </div>
        </div>

    </body>
</html>
