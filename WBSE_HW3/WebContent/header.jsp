<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>My News Reader</p>
<ul>
	<li><a href="${pageContext.request.contextPath}/GetNewsServlet.do?type=1">臺灣</a></li>
	<li><a href="${pageContext.request.contextPath}/GetNewsServlet.do?type=2">科技</a></li>
	<li><a href="${pageContext.request.contextPath}/GetNewsServlet.do?type=3">運動</a></li>
	<li><a href="${pageContext.request.contextPath}/GetNewsServlet.do?type=4">娛樂</a></li>
</ul>
</body>
</html>