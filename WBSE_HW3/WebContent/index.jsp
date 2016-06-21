<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.example.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WBSE_HW3</title>

<style>
a:link {
    color: black;
    background-color: transparent;
    text-decoration: none;
}
a:visited {
    color: blue;
    background-color: transparent;
    text-decoration: none;
}
a:hover {
    color: red;
    background-color: transparent;
    text-decoration: underline;
}
a:active {
    color: yellow;
    background-color: transparent;
    text-decoration: underline;
}
</style>
</head>
<body>

<jsp:include page="header.jsp"/>
<jsp:include page="history.jsp"/>

<c:forEach var="news" items="${newsList}" varStatus="movieLoopCount" >
<p><a href="${pageContext.request.contextPath}/RecordServlet.do?serialNumber=${news.serialNumber}" target="_blank">${news.title}</a></p>
<div style="width:620px;height:100px">
<div style="width:100px;height:100px;float:left">
	<img src="${news.imageUrl}">
</div>
<div style="width:20px;height:100px;float:left">   </div>
<div style="width:500px;height:100px;display:inline-block">${news.content }</div>
</div>
<br>
</c:forEach>
</body>
</html>