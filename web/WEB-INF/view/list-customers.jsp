<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: maxa
  Date: 1/3/2018
  Time: 9:15 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List Customers</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
    <div id="wrapper">
      <div id="header">
        <h2>CRM - Customer Relations Management</h2>
      </div>
    </div>
    <div class="container">
        <div class="content">
            <input class="add-button" type="button" value="Add customer" onclick="window.location.href='showFormForAdd';return false;"/>
            <table>
                  <tr>
                      <th>First Name</th>
                      <th>Last Name</th>
                      <th>Email</th>
                      <th>Action</th>
                  </tr>
                  <c:forEach var="tempCustomer" items="${customers}">
                      <c:url var="updateLink" value="/customer/showFormForUpdate">
                          <c:param name="customerId" value="${tempCustomer.id}"></c:param>
                      </c:url>
                      <c:url var="deleteLink" value="/customer/delete">
                          <c:param name="customerId" value="${tempCustomer.id}"></c:param>
                      </c:url>
                      <tr>
                          <td>${tempCustomer.firstName}</td>
                          <td>${tempCustomer.lastName}</td>
                          <td>${tempCustomer.email}</td>
                          <td><a href="${updateLink}">Update</a> | <a href="${deleteLink}" onclick="if(!(confirm('Are you sure you want to delete this customer?'))) return false;">Delete</a> </td>
                      </tr>
                  </c:forEach>
            </table>
        </div>
    </div>
</body>
</html>
