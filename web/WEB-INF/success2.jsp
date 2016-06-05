<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib  uri="/WEB-INF/c.tld" prefix="c"%>

<%@ taglib  uri="typeTag.tld" prefix="type"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Page</title>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    </head>
    <body>

        <type:customer typeCustomer="customer"/>
        
           <table class="table table-bordered table-hover bg-warning">
                <tr>               
                    <td><h3 class="text-danger">FirstName</h3></td>
                    <td><h3 class="text-danger">LastName</h3></td>
                    <td><h3 class="text-danger">CustomerDocID</h3></td>
                </tr>
                <tbody>
                    <tr>
                        <td><h4 class="text-success"><c:out value="${customer.firstName}"/></h4></td>
                        <td><h4 class="text-success"><c:out value="${customer.lastName}"/></h4></td>
                        <td><h4 class="text-success"><c:out value="${customer.customerDocID}"/></h4></td>
                    </tr>
                </tbody>
            </table>
        
        
            <table class="table table-bordered table-hover bg-warning">
                <tr>               
                    <td><h3 class="text-danger">EmailAddress</h3></td>
                    <td><h3 class="text-danger">EmailType</h3></td>
                    <td><h3 class="text-danger">SyncStatus</h3></td>
                </tr>
                <tbody>
                    <tr>
                        <td><h4 class="text-success"><c:out value="${customer.email.emailAddress}"/></h4></td>
                        <td><h4 class="text-success"><c:out value="${customer.email.emailType}"/></h4></td>
                        <td><h4 class="text-success"><c:out value="${customer.email.syncStatus}"/></h4></td>
                    </tr>
                </tbody>
            </table >
        
        
            <table class="table table-bordered table-hover bg-warning">
                <tr>               
                    <td><h3 class="text-danger">PhoneNumber</h3></td>
                    <td><h3 class="text-danger">PhoneType</h3></td>
                    <td><h3 class="text-danger">SyncStatus</h3></td>
                </tr>
                <tbody>
                    <tr>
                        <td><h4 class="text-success"><c:out value="${customer.phone.phoneNumber}"/></h4></td>
                        <td><h4 class="text-success"><c:out value="${customer.phone.phoneType}"/></h4></td>
                        <td><h4 class="text-success"><c:out value="${customer.phone.syncStatus}"/></h4></td>
                    </tr>
                </tbody>
            </table>
        
        
            <table class="table table-bordered table-hover">
                <tr>               
                    <td>#</td>
                    <td><h2 class="text-danger">AmountPaid</h2></td>
                    <td><h2 class="text-danger">FormOfPaymentTypeCode</h2></td>
                    <td><h2 class="text-danger">CurrencyCode</h2></td>
                </tr>
                <tbody>
                    <c:forEach items="${customer.payment}" var="payment" varStatus="iterator">
                        <tr>
                            <td><h3 class="text-success"><c:out value="${iterator.index + 1}"/></h3></td>
                            <td><h3 class="text-success"><c:out value="${payment.amountPaid}"/></h3></td>
                            <td><h3 class="text-success"><c:out value="${payment.formOfPaymentTypeCode}"/></h3></td>
                            <td><h3 class="text-success"><c:out value="${payment.currencyCode}"/></h3></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
       
    </body>
</html>
