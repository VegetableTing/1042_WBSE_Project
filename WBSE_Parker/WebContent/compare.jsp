<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.example.type.*"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>停車場比較</title>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>

<body>
	<div class='container'>
		<h3>比較清單：</h3>
		<c:forEach var="compareEach" items="${sessionScope.compareList}">
			<p>
				ID： ${compareEach.id} <br> 停車場名稱：${compareEach.name}
			</p>
		</c:forEach>

		<table id="mytable" class="table table-striped">
			<tr>
				<td>地區</td>
				<td>停車場名</td>
				<td>每小時收費</td>
				<td>停車場類型</td>
				<td>總汽車位</td>
				<td>總機車位</td>
			</tr>
		</table>
		<div id="result"></div>
	</div>


	<script>
		function add_new_data(taiwanArea, name, fee, type, totalCar, totalMotor) {

			var num = document.getElementById("mytable").rows.length;

			var Tr = document.getElementById("mytable").insertRow(num);

			Td = Tr.insertCell(Tr.cells.length);

			Td.innerHTML = "<td>" + taiwanArea + " </td>";

			Td = Tr.insertCell(Tr.cells.length);
			Td.innerHTML = "<td>" + name + " </td>";

			Td = Tr.insertCell(Tr.cells.length);
			Td.innerHTML = "<td>" + fee + " </td>";
			Td = Tr.insertCell(Tr.cells.length);
			Td.innerHTML = "<td>" + type + " </td>";
			Td = Tr.insertCell(Tr.cells.length);
			Td.innerHTML = "<td>" + totalCar + " </td>";
			Td = Tr.insertCell(Tr.cells.length);
			Td.innerHTML = "<td>" + totalMotor + " </td>";

		}

		function getLot(id) {
			var data = "originalId=" + id;
			$.ajax({
				type : "GET",
				url : "getAreaParking.do",
				data : data,
				cache : false,
				success : function(response) {
					add_new_data(response[0].taiwanArea, response[0].name,
							response[0].fee, response[0].type,
							response[0].totalCar, response[0].totalMotor);
					console.log(data);
				},
				error : function(xhr, ajaxOptions, thrownError) {
					alert(xhr.status);
					alert(thrownError.Error);
				}

			});
		}
	<%if (session.getAttribute("compareList") != null) {%>
		
	<%ArrayList<HistoryObject> compareList = (ArrayList<HistoryObject>) session.getAttribute("compareList");%>
		
	<%for (int i = 0; i < compareList.size(); ++i) {%>
		getLot(
	<%=compareList.get(i).getId().toString()%>
		);
	<%}%>
		
	<%}%>
		
	</script>
</body>
</html>
