<%-- 
    Document   : employeelist
    Created on : Aug 28, 2018, 4:50:12 PM
    Author     : a0282565
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h1>Employee list:</h1>
<table class="table">
    <thead>
        <tr>
            <th>empkey</th>
            <th>EmployeeId</th>
            <th>Fullname</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${employees}" var="employee" varStatus="status">
            <tr class="${status.count%2==0 ? 'tbl5' : 'tbl6'}">
                <td>${employee.empkey}</a></td>
                <td>${employee.employeeid}</td>
                <td>${employee.fullname}</td>
            </tr>
        </c:forEach>
    </tbody>
</table>
