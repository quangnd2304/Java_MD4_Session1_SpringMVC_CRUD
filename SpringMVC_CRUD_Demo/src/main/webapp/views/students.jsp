<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: This MC
  Date: 08/12/2022
  Time: 9:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List Student</title>
</head>
<body>
<table border="1">
    <thead>
    <tr>
        <th>Student ID</th>
        <th>Student Name</th>
        <th>Age</th>
        <th>Sex</th>
        <th>BirthDate</th>
        <th>Address</th>
        <th>Status</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${listStudent}" var="st">
        <tr>
            <td>${st.studentId}</td>
            <td>${st.studentName}</td>
            <td>${st.age}</td>
            <td>${st.sex?"Nam":"Nữ"}</td>
            <td><fmt:formatDate value="${st.birthDate}" pattern="dd/MM/yyyy"/></td>
            <td>${st.address}</td>
            <td>${st.status?"Đang học":"Nghỉ học"}</td>
            <td>
                <a href="<%=request.getContextPath()%>/studentController/initUpdate?studentId=${st.studentId}">Update</a>
                <a href="<%=request.getContextPath()%>/studentController/delete?studentId=${st.studentId}">Delete</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<a href="<%=request.getContextPath()%>/studentController/initCreate">Create New Student</a>
</body>
</html>
