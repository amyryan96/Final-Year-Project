<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<%-- <%@ page import="java.util.*" %>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>
 
<% 
Gson gsonObj = new Gson();
Map<Object,Object> map = null;
List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();



 //cardio
map = new HashMap<Object,Object>(); map.put("label", "Sunday"); 
if(request.getParameter("day").equals("Sunday")){
map.put("y", Integer.parseInt(request.getParameter("cardio"))); list.add(map);
}
map = new HashMap<Object,Object>(); map.put("label", "Monday"); 
if(request.getParameter("day").equals("Monday")){
map.put("y", Integer.parseInt(request.getParameter("cardio"))); list.add(map);
}
map = new HashMap<Object,Object>(); map.put("label", "Tuesday"); 
if(request.getParameter("day").equals("Tuesday")){
map.put("y", Integer.parseInt(request.getParameter("cardio"))); list.add(map);
}
map = new HashMap<Object,Object>(); map.put("label", "Wednesday"); 
if(request.getParameter("day").equals("Wednesday")){
map.put("y", Integer.parseInt(request.getParameter("cardio"))); list.add(map);
}
map = new HashMap<Object,Object>(); map.put("label", "Thursday"); 
if(request.getParameter("day").equals("Thursday")){
map.put("y", Integer.parseInt(request.getParameter("cardio"))); list.add(map);
}
map = new HashMap<Object,Object>(); map.put("label", "Friday"); 
if(request.getParameter("day").equals("Friday")){
map.put("y", Integer.parseInt(request.getParameter("cardio"))); list.add(map);
}
map = new HashMap<Object,Object>(); map.put("label", "Saturday"); 
if(request.getParameter("day").equals("Saturday")){
map.put("y", Integer.parseInt(request.getParameter("cardio"))); list.add(map);
}
 
String dataPoints1 = gsonObj.toJson(list);
 //weight training
list = new ArrayList<Map<Object,Object>>();

map = new HashMap<Object,Object>(); map.put("label", "Sunday");
if(request.getParameter("day").equals("Sunday")){
map.put("y", Integer.parseInt(request.getParameter("weights"))); list.add(map);
}
map = new HashMap<Object,Object>(); map.put("label", "Monday"); 
if(request.getParameter("day").equals("Monday")){
map.put("y", Integer.parseInt(request.getParameter("weights"))); list.add(map);
}
map = new HashMap<Object,Object>(); map.put("label", "Tuesday"); 
if(request.getParameter("day").equals("Tuesday")){
map.put("y", Integer.parseInt(request.getParameter("weights"))); list.add(map);
}
map = new HashMap<Object,Object>(); map.put("label", "Wednesday"); 
if(request.getParameter("day").equals("Wednesday")){
map.put("y", Integer.parseInt(request.getParameter("weights"))); list.add(map);
}
map = new HashMap<Object,Object>(); map.put("label", "Thursday"); 
if(request.getParameter("day").equals("Thursday")){
map.put("y", Integer.parseInt(request.getParameter("weights"))); list.add(map);
}
map = new HashMap<Object,Object>(); map.put("label", "Friday"); 
if(request.getParameter("day").equals("Friday")){
map.put("y", Integer.parseInt(request.getParameter("weights"))); list.add(map);
}
map = new HashMap<Object,Object>(); map.put("label", "Saturday"); 
if(request.getParameter("day").equals("Saturday")){
map.put("y", Integer.parseInt(request.getParameter("weights"))); list.add(map);
}
 
String dataPoints2 = gsonObj.toJson(list);
 //casual exercise
list = new ArrayList<Map<Object,Object>>();
map = new HashMap<Object,Object>(); map.put("label", "Sunday");
if(request.getParameter("day").equals("Sunday")){
map.put("y", Integer.parseInt(request.getParameter("casual"))); list.add(map);
}
map = new HashMap<Object,Object>(); map.put("label", "Monday"); 
if(request.getParameter("day").equals("Monday")){
map.put("y", Integer.parseInt(request.getParameter("casual"))); list.add(map);
}
map = new HashMap<Object,Object>(); map.put("label", "Tuesday"); 
if(request.getParameter("day").equals("Tuesday")){
map.put("y", Integer.parseInt(request.getParameter("casual"))); list.add(map);
}
map = new HashMap<Object,Object>(); map.put("label", "Wednesday"); 
if(request.getParameter("day").equals("Wednesday")){
map.put("y", Integer.parseInt(request.getParameter("casual"))); list.add(map);
}
map = new HashMap<Object,Object>(); map.put("label", "Thursday"); 
if(request.getParameter("day").equals("Thursday")){
map.put("y", Integer.parseInt(request.getParameter("casual"))); list.add(map);
}
map = new HashMap<Object,Object>(); map.put("label", "Friday"); 
if(request.getParameter("day").equals("Friday")){
map.put("y", Integer.parseInt(request.getParameter("casual"))); list.add(map);
}
map = new HashMap<Object,Object>(); map.put("label", "Saturday"); 
if(request.getParameter("day").equals("Saturday")){
map.put("y", Integer.parseInt(request.getParameter("casual"))); list.add(map);
}
 
String dataPoints3 = gsonObj.toJson(list);
%> --%>

<!DOCTYPE HTML>
<html>
<head>
<link href=static/css/lux/bootstrap.min.css rel="stylesheet">
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Progress Page</title>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>
<body>
	<div role="navigation">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<a class="navbar-brand" href="/success">Gym HomePage</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarColor03" aria-controls="navbarColor03"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarColor03">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link"
						href="/bookClass" style="font-size: 10px"> Book A Gym Class<span
							class="sr-only">(current)</span></a></li>
					<li class="nav-item"><a class="nav-link" href="/foodDiary"
						style="font-size: 10px"> Log Your Food<span class="sr-only">(current)</span></a></li>
					<li class="nav-item"><a class="nav-link" href="/payment"
						style="font-size: 10px"> Membership Renewal<span
							class="sr-only">(current)</span></a></li>
					<li class="nav-item"><a class="nav-link" href="/progress"
						style="font-size: 10px"> Set your Weekly Goals<span
							class="sr-only">(current)</span></a></li>
					<li class="nav-item"><a class="nav-link" href="/viewFoodLogs"
						style="font-size: 10px"> View Previous Food Logs<span
							class="sr-only">(current)</span></a></li>
					<li class="nav-item"><a class="nav-link" href="/recipes"
						style="font-size: 10px"> Search Recipes<span class="sr-only">(current)</span></a></li>
					<!-- <li class="nav-item"><a class="nav-link" href="/MyFirstSchedule"
						style="font-size: 10px">Test<span
							class="sr-only">(current)</span></a></li> -->
					<li class="nav-item"><a class="nav-link" href="/prevGoals"
						style="font-size: 10px"> Previous Goals<span class="sr-only">(current)</span></a></li>
					<li class="nav-item">
						<form class="form-horizontal" method="post" action="logoutMember">
							<input type="submit" class="btn btn-outline-primary"
								value="Logout" name="logoutMember" />
						</form>
					</li>
				</ul>

			</div>
		</nav>
	</div>



	<%-- <script type="text/javascript">
window.onload = function() { 
 
var chart = new CanvasJS.Chart("chartContainer", {
	theme: "light2",
	title: {
		text: "My Previous Goals"
	},
	subtitles: [{
		text: "Track Your Progress"
	}],
	axisY: {
		title: "Time in Minutes"
	},
	toolTip: {
		shared: true,
		reversed: true		
	},
	data: [{
		type: "stackedColumn",
		name: "Cardio",
		showInLegend: true,
		yValueFormatString: "#,##0 min",
		dataPoints: <%out.print(dataPoints1);%>
	},
	{
		type: "stackedColumn",
		name: "Weight Training",
		showInLegend: true,
		yValueFormatString: "#,##0 min",
		dataPoints: <%out.print(dataPoints2);%> 
	},
	{
		type: "stackedColumn",
		name: "Casual Walking",
		showInLegend: true,
		yValueFormatString: "#,##0 min",
		dataPoints: <%out.print(dataPoints3);%> 
	}]
});
chart.render();
 
}
</script> --%>
<div class="container">
<!---heading---->
<header style="color: black;" class="heading"> Your Gaols for the week starting ${sessionScope.chosenDate}</header>
<hr></hr>

	<sql:setDataSource var="con1" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/fypdbnew" user="root" password="root" />
	<!-- Connects to database -->

	<sql:query dataSource="${con1 }"
		sql="select * from exercise A inner join exercise_date_exercise B on A.exercise_id = B.exercise_exercise_id
    inner join exercise_date C on B.exercise_date_goal_id = C.goal_id where C.date = '${sessionScope.chosenDate }'"
		var="goals2" />

	<table align="center" cellpadding="5" cellspacing="5" border="1">

		<c:forEach var="list" items="${goals2.rows }">
			<tr bgcolor="#FFAC9A">
				<th>Day</th>
				<th>Cardio(Mins)</th>
				<th>Weights(Mins)</th>
				<th>Casual(Mins)</th>
			</tr>
			<tr>
				<td><c:out value="${list.day }" /></td>
				<td><c:out value="${list.cardio_time }" /></td>
				<td><c:out value="${list.weight_time }" /></td>
				<td><c:out value="${list.casw_time }" /></td>
			</tr>
		</c:forEach>
	</table>


</div>
	<div id="chartContainer" style="height: 370px; width: 100%;"></div>
	<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>


</body>
</html>


<!-- <form action="sample.jsp" method="POST">
      <input type="text" id="firstname" name="firstname" />
      <input type="submit" value="Submit" />
    </form> -->



