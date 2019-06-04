<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>
 
<% 
Gson gsonObj = new Gson();
Map<Object,Object> map = null;
List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();



 //cardio
map = new HashMap<Object,Object>(); map.put("label", "Sunday"); 
if(request.getParameter("day") !=null){
map.put("y", Integer.parseInt(request.getParameter("exercise1"))); list.add(map);
}
map = new HashMap<Object,Object>(); map.put("label", "Monday"); 
if(request.getParameter("day1")!=null){
map.put("y", Integer.parseInt(request.getParameter("exercise1M"))); list.add(map);
}
map = new HashMap<Object,Object>(); map.put("label", "Tuesday"); 
if(request.getParameter("day2")!=null){
map.put("y", Integer.parseInt(request.getParameter("exerciseT1"))); list.add(map);
}
map = new HashMap<Object,Object>(); map.put("label", "Wednesday"); 
if(request.getParameter("day3")!=null){
map.put("y", Integer.parseInt(request.getParameter("exercise1W"))); list.add(map);
}
map = new HashMap<Object,Object>(); map.put("label", "Thursday"); 
if(request.getParameter("day4")!=null){
map.put("y", Integer.parseInt(request.getParameter("exercise1T"))); list.add(map);
}
map = new HashMap<Object,Object>(); map.put("label", "Friday"); 
if(request.getParameter("day5")!=null){
map.put("y", Integer.parseInt(request.getParameter("exercise1F"))); list.add(map);
}
map = new HashMap<Object,Object>(); map.put("label", "Saturday"); 
if(request.getParameter("day6")!=null){
map.put("y", Integer.parseInt(request.getParameter("exercise1S"))); list.add(map);
}
 
String dataPoints1 = gsonObj.toJson(list);
 //weight training
list = new ArrayList<Map<Object,Object>>();

map = new HashMap<Object,Object>(); map.put("label", "Sunday");
if(request.getParameter("day")!=null){
map.put("y", Integer.parseInt(request.getParameter("exercise2"))); list.add(map);
}
map = new HashMap<Object,Object>(); map.put("label", "Monday"); 
if(request.getParameter("day1")!=null){
map.put("y", Integer.parseInt(request.getParameter("exercise2M"))); list.add(map);
}
map = new HashMap<Object,Object>(); map.put("label", "Tuesday"); 
if(request.getParameter("day2")!=null){
map.put("y", Integer.parseInt(request.getParameter("exerciseT2"))); list.add(map);
}
map = new HashMap<Object,Object>(); map.put("label", "Wednesday"); 
if(request.getParameter("day3")!=null){
map.put("y", Integer.parseInt(request.getParameter("exercise2W"))); list.add(map);
}
map = new HashMap<Object,Object>(); map.put("label", "Thursday"); 
if(request.getParameter("day4")!=null){
map.put("y", Integer.parseInt(request.getParameter("exercise2T"))); list.add(map);
}
map = new HashMap<Object,Object>(); map.put("label", "Friday"); 
if(request.getParameter("day5")!=null){
map.put("y", Integer.parseInt(request.getParameter("exercise2F"))); list.add(map);
}
map = new HashMap<Object,Object>(); map.put("label", "Saturday"); 
if(request.getParameter("day6")!=null){
map.put("y", Integer.parseInt(request.getParameter("exercise2S"))); list.add(map);
}
 
String dataPoints2 = gsonObj.toJson(list);
 //casual exercise
list = new ArrayList<Map<Object,Object>>();
map = new HashMap<Object,Object>(); map.put("label", "Sunday");
if(request.getParameter("day")!=null){
map.put("y", Integer.parseInt(request.getParameter("exercise3"))); list.add(map);
}
map = new HashMap<Object,Object>(); map.put("label", "Monday"); 
if(request.getParameter("day1")!=null){
map.put("y", Integer.parseInt(request.getParameter("exercise3M"))); list.add(map);
}
map = new HashMap<Object,Object>(); map.put("label", "Tuesday"); 
if(request.getParameter("day2")!=null){
map.put("y", Integer.parseInt(request.getParameter("exerciseT3"))); list.add(map);
}
map = new HashMap<Object,Object>(); map.put("label", "Wednesday"); 
if(request.getParameter("day3")!=null){
map.put("y", Integer.parseInt(request.getParameter("exercise3W"))); list.add(map);
}
map = new HashMap<Object,Object>(); map.put("label", "Thursday"); 
if(request.getParameter("day4")!=null){
map.put("y", Integer.parseInt(request.getParameter("exercise3T"))); list.add(map);
}
map = new HashMap<Object,Object>(); map.put("label", "Friday"); 
if(request.getParameter("day5")!=null){
map.put("y", Integer.parseInt(request.getParameter("exercise3F"))); list.add(map);
}
map = new HashMap<Object,Object>(); map.put("label", "Saturday"); 
if(request.getParameter("day6")!=null){
map.put("y", Integer.parseInt(request.getParameter("exercise3S"))); list.add(map);
}
 
String dataPoints3 = gsonObj.toJson(list);
%>
 
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
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor03" aria-controls="navbarColor03" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

 <div class="collapse navbar-collapse" id="navbarColor03">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link" href="/bookClass" style="font-size: 10px">
					Book A Gym Class<span class="sr-only">(current)</span></a></li>
					<li class="nav-item"><a class="nav-link" href="/foodDiary" style="font-size: 10px">
					Log Your Food<span class="sr-only">(current)</span></a></li>
					<li class="nav-item"><a class="nav-link" href="/payment" style="font-size: 10px">
					Membership Renewal<span class="sr-only">(current)</span></a></li>
					<li class="nav-item"><a class="nav-link" href="/progress" style="font-size: 10px">
					Set your Weekly Goals<span class="sr-only">(current)</span></a></li>
					<li class="nav-item"><a class="nav-link" href="/viewFoodLogs" style="font-size: 10px">
					View Previous Food Logs<span class="sr-only">(current)</span></a></li>
					<li class="nav-item"><a class="nav-link" href="/recipes" style="font-size: 10px">
					Search Recipes<span class="sr-only">(current)</span></a></li>
					<!-- <li class="nav-item"><a class="nav-link" href="/MyFirstSchedule"
						style="font-size: 10px">Test<span
							class="sr-only">(current)</span></a></li> -->
					<li class="nav-item"><a class="nav-link" href="/prevGoals" style="font-size: 10px">
					Previous Goals<span class="sr-only">(current)</span></a></li>
					<li class="nav-item">
						<form form class="form-horizontal" method="post" action="logoutMember">
							<input type="submit" class="btn btn-outline-primary"
								value="Logout" name="logoutMember" />
						</form>
					</li>
				</ul>

			</div>
</nav>
</div> 



<script type="text/javascript">
window.onload = function() { 
 
var chart = new CanvasJS.Chart("chartContainer", {
	theme: "light2",
	title: {
		text: "Fitness & Exercise"
	},
	subtitles: [{
		text: "Set Your Goals"
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
</script>



<div id="chartContainer" style="height: 370px; width: 100%;"></div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>


</body>
</html>        


<!-- <form action="sample.jsp" method="POST">
      <input type="text" id="firstname" name="firstname" />
      <input type="submit" value="Submit" />
    </form> -->
    
    
    
                            