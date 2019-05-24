<!Doctype html>
<html>
<style>
body {
	background-image: url("images/gym2.jpg"); /* url(https://s3.envato.com/files/243754334/primag.jpg); */
	background-repeat: no-repeat;
	background-size: cover;
	width: 100%;
	height: 100vh;
	overflow: auto;
}
/*-----for border----*/
.container {
	font-family: Roboto, sans-serif;
	background-image:
		url("images/light-grey-background.jpg");
		
	border-style: 1px solid grey;
	margin: 0 auto;
	text-align: center;
	opacity: 0.8;
	margin-top: 67px;
	box-shadow: 2px 5px 5px 0px #eee;
	max-width: 550px;
	padding-top: 10px;
	height: 425px;
	margin-top: 166px;
}
/*---for heading-----*/
.heading {
	text-decoration: bold;
	text-align: center;
	font-size: 30px;
	color: black;
	font-weight: bold;
	padding-top: 10px;
}
.pass {
	color: white;
	margin-top: 9px;
	font-size: 14px;
	font-family: sans-serif;
	/* margin-left: 6px; */
	
}
/*------------For submit button---------*/
.sbutton {
	color: white;
	font-size: 20px;
	border: 1px solid white;
	background-color: #080808;
	width: 32%;
	margin-left: 41%;
	margin-top: 16px;
	box-shadow: 0px 2px 2px 0px white;
}
.btn.btn-warning:hover {
	box-shadow: 2px 1px 2px 3px #808080;
	background: #000000;
	color: #fff;
	transition: background-color 1.15s ease-in-out, border-color 1.15s
		ease-in-out, box-shadow 1.15s ease-in-out;
}
</style>
<head>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Successful Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>

<div role="navigation">
		<div class="navbar navbar-inverse">
		<a href="/welcome" class="navbar-brand">Progress Page </a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="/bookClass">Book a Gym Class</a></li>
					<li><a href="/foodDiary">Log Your Food for Today</a></li>
					<li><a href="/viewFoodLogs">View Previous Food Diary Logs</a></li>
					<div align = "centre">
					<li><form form class="form-horizontal" method="post" action="logoutMember">
				<input type="submit" class="btn btn-warning" value="Logout" name="logoutMember" />
				</form></li>
					</div>
				</ul>
			</div>
		</div>
		</div>

	<div class="container">
		<!---heading---->
		<header class="heading"> Welcome ${sessionScope.member.name} to your Progress Report  </header>
		<hr></hr>
			</div>
</body>
</html>





<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>
 
<% 
Gson gsonObj = new Gson();
Map<Object,Object> map = null;
List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();
 
map = new HashMap<Object,Object>(); map.put("label", "Sunday"); map.put("y", 60); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Monday"); map.put("y", 30); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Tuesday"); map.put("y", 25); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Wednesday"); map.put("y", 30); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Thursday"); map.put("y", 35); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Friday"); map.put("y", 20); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Saturday"); map.put("y", 30); list.add(map);
 
String dataPoints1 = gsonObj.toJson(list);
 
list = new ArrayList<Map<Object,Object>>();
map = new HashMap<Object,Object>(); map.put("label", "Sunday"); map.put("y", 45); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Monday"); map.put("y", 20); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Tuesday"); map.put("y", 25); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Wednesday"); map.put("y", 20); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Thursday"); map.put("y", 25); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Friday"); map.put("y", 20); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Saturday"); map.put("y", 20); list.add(map);
 
String dataPoints2 = gsonObj.toJson(list);
 
list = new ArrayList<Map<Object,Object>>();
map = new HashMap<Object,Object>(); map.put("label", "Sunday"); map.put("y", 0); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Monday"); map.put("y", 25); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Tuesday"); map.put("y", 20); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Wednesday"); map.put("y", 25); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Thursday"); map.put("y", 45); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Friday"); map.put("y", 25); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Saturday"); map.put("y", 35); list.add(map);
 
String dataPoints3 = gsonObj.toJson(list);
%>
 
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
window.onload = function() { 
 
var chart = new CanvasJS.Chart("chartContainer", {
	theme: "light2",
	title: {
		text: "Fitness & Exercise"
	},
	subtitles: [{
		text: "Weekly Scorecard"
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
		name: "Cycling",
		showInLegend: true,
		yValueFormatString: "#,##0 min",
		dataPoints: <%out.print(dataPoints3);%> 
	}]
});
chart.render();
 
}
</script>
</head>
<body>
<div id="chartContainer" style="height: 370px; width: 100%;"></div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
</body>
</html>        

text box for inputting persons weight and height to get their BMI and body fat percentage
<!-- <form action="sample.jsp" method="POST">
      <input type="text" id="firstname" name="firstname" />
      <input type="submit" value="Submit" />
    </form> -->
    
    
    
                           --%>