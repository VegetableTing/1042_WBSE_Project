<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.example.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<p>歷史紀錄</p>
批次閱覽紀錄<a href="GetNewsServlet.do">[更新]</a><br>
---------------------<br>
<c:forEach var="newsHistory" items="${sessionScope.newsHistoryList}">
<br>
<a href="${newsHistory.url}" target="_blank">${newsHistory.title}</a><br>
---------------------<br>
${newsHistory.content}<br>
</c:forEach>
</body>
</html>