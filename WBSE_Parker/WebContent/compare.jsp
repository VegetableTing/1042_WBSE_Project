<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <head>
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     <title>停車場比較清單</title>
      <script  src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
   </head>
   <body>
     <div>
     <table id="mytable">
		  <tr>
  			  <td class="taiwanArea">地區</td>
  			  <td  class="name">停車場名</td>
  			  <td  class="fee">每小時收費</td>
  			  <td class="type">停車場類型</td>
  			  <td  class="totalCar">總汽車位</td>
  			  <td  class="totalMotor">總機車位</td>
 		 </tr>  		 
	</table>
     <input type="button" id="btnSumit" name="btnSubmit" value="submit" />
	   <div id="result"></div>
	 </div>

   </body>
</html>

<script type="text/javascript">
$(document).ready(function(){
	 var compareID=new Array()[5];
	  compareID[0]=request.getParameter("compareID1");  
	  compareID[1]=request.getParameter("compareID2");  
	  compareID[2]=request.getParameter("compareID3");  
	  compareID[3]=request.getParameter("compareID4");  
	  compareID[4]=request.getParameter("compareID5"); 
	 
	 for(i=0;i<5;i++){
		 if(compare[i]!=null){
			 $.ajax({
				    type: "GET",
				    url: "getAreaParking.do",
				    data: "originalId="+compareID[i], 
					cache: false,
					success: function(response){
						add_new_data(response[0].taiwanArea,response[0].name,response[0].fee,response[0].type,response[0].totalCar,response[0].totalMotor);
					
					},
				    error: function(xhr, ajaxOptions, thrownError)
				    { 
				      alert(xhr.status); 
				      alert(thrownError.Error); 
				    }

					
				  });
			 
		 }
			 
		 
		 
	 }
   
});   


function add_new_data(taiwanArea,name,fee,type,totalCar,totalMotor ) {
	 
	 var num = document.getElementById("mytable").rows.length;

	 var Tr = document.getElementById("mytable").insertRow(num);
	
	 Td = Tr.insertCell(Tr.cells.length);
	
	 Td.innerHTML="<td>"+taiwanArea+" </td>";
	 
	 Td = Tr.insertCell(Tr.cells.length);
	 Td.innerHTML="<td>"+name+" </td>";
	
	 Td = Tr.insertCell(Tr.cells.length);
	 Td.innerHTML="<td>"+fee+" </td>";
	 Td = Tr.insertCell(Tr.cells.length);
	 Td.innerHTML="<td>"+type+" </td>";
	 Td = Tr.insertCell(Tr.cells.length);
	 Td.innerHTML="<td>"+totalCar+" </td>";
	 Td = Tr.insertCell(Tr.cells.length);
	 Td.innerHTML="<td>"+totalMotor+" </td>";
	 
	}

$("#btnSumit").click(function(e){
  alert("submit!");
  
  $.ajax({
    type: "GET",
    url: "getAreaParking.do",
    data: "originalId=030034", 
	cache: false,
	success: function(response){
		add_new_data(response[0].taiwanArea,response[0].name,response[0].fee,response[0].type,response[0].totalCar,response[0].totalMotor);
	
	},
    error: function(xhr, ajaxOptions, thrownError)
    { 
      alert(xhr.status); 
      alert(thrownError.Error); 
    }

	
  });
});

</script>