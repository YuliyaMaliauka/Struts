<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib  uri="/WEB-INF/c.tld" prefix="c"%>

<%@ taglib  uri="typeTag.tld" prefix="type"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reservation Page</title>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    </head>
    <body class="bg-warning">
        <div class="table-responsive">
            <table class="table table-bordered table-hover">
                <type:reservation typeReservation="reservation"/> 
                <tr>               
                    <td>#</td>
                    <td><h2 class="text-danger">Cod </h2></td>
                    <td><h2 class="text-danger">Description</h2></td>
                    <td><h2 class="text-danger">ComponentTypeCode</h2></td>
                    <td><h2 class="text-danger">CreateDateTime</h2></td>
                    <td><h2 class="text-danger">InternalStatus</h2></td>
                    <td><h2 class="text-danger">Sequence</h2></td>
                </tr>
                <tbody>
                    <c:forEach items="${reservation.resComponent}" var="resComp" varStatus="iterator">
                        <tr>
                            <td><h3 class="text-success"><c:out value="${iterator.index + 1}"/></h3></td>
                            <td><h3 class="text-success"><c:out value="${reservation.code}"/></h3></td>
                            <td><h3 class="text-success"><c:out value="${reservation.description}"/></h3></td>
                            <td><h3 class="text-success"><c:out value="${resComp.componentTypeCode}"/></h3></td>
                            <td><h3 class="text-success"><c:out value="${resComp.createDateTime}"/></h3></td>
                            <td><h3 class="text-success"><c:out value="${resComp.internalStatus}"/></h3></td>
                            <td><h3 class="text-success"><c:out value="${resComp.sequence}"/></h3></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>

    </body>
</html>