<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib  uri="/WEB-INF/c.tld" prefix="c"%>

<%@ taglib  uri="typeTag.tld" prefix="type"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FareFamily Page</title>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    </head>
    <body class="bg-warning">
      
        <type:fareFamily typeFamily="fareFamily"/>
        <table>
            <tr>               
                <td><h3 class="text-danger">FareFamilyCode</h3></td>
            </tr>
            <tbody>
                <tr>
                    <td><h4 class="text-success"><c:out value="${fareFamily.fareFamilyCode}"/></h4></td>
                </tr>
            </tbody>
        </table>
        <br>
        <table class="table table-bordered table-hover">
            <tr>               
                <td>#</td>
                <td><h3 class="text-danger">AncillaryAirComponentCode</h3></td>
            </tr>
            <tbody>
                <c:forEach items="${fareFamily.ancillaryAirComponent}" var="family" varStatus="iterator">
                <tr>
                    <td><h4 class="text-success"><c:out value="${iterator.index + 1}"/></h4></td>
                    <td><h4 class="text-success"><c:out value="${family.ancillaryAirComponentCode}"/></h4></td>
                 </tr>
                </c:forEach>
            </tbody>
        </table>
        <br>
    </body>
</html>
