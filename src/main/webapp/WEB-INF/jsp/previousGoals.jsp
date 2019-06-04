<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE HTML>
<html>
<style>
body {
	/* background-image: url("images/gym.jpg"); */
	background-repeat: no-repeat;
	background-size: cover;
	width: 100%;
	height: 100vh;
	overflow: auto;
}
/*-----for border----*/
.container {
	font-family: Roboto, sans-serif;
	background-image: /* url("images/light-grey-background.jpg"); */
		/* 	
	border-style: 1px solid grey; */
		/* margin: 0 auto; */ text-align : center;
	/* opacity: 0.8;
	margin-top: 67px; */
	/* box-shadow: 2px 5px 5px 0px #eee; */
	/* max-width: 550px;
	padding-top: 10px;
	height: 425px;
	margin-top: 166px; */
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

#exer {
	margin-top: 5px;
}

.exer {
	margin-left: 44px;
	font-family: sans-serif;
	color: white;
	font-size: 14px;
	margin-top: 13px;
}

.exer {
	color: white;
	margin-top: 9px;
	font-size: 14px;
	font-family: sans-serif;
	margin-left: 6px;
	margin-top: 9px;
}

#exer {
	margin-top: 6px;
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
<meta name="viewport" content="width=device-width, initial-scale=1">

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
<form class="form-horizontal" method="post" action="ViewGoals">
	<input type="text" list="datesLog" placeholder="Choose Date" />
	<sql:setDataSource var="con" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/fypdbnew" user="root" password="root" /> <!-- Connects to database -->
	<sql:query dataSource="${con }" sql="select * from exercise_date"
	 var="goals" /> <!-- Select statement for class in selected database  -->
	
	<%-- select * from exercise_date A inner join exercise_date_exercise B on 
	A.goal_id = B.exercise_date_goal_id inner join exercise C on B.exercise_exercise_id = C.exercise_id inner 
	join member_exercise D on C.exercise_id = D.exercise_exercise_id where D.member_memberid = ${sessionScope.id}"
	 --%>
	<datalist id="datesLog">
		<c:forEach var="rows" items="${goals.rows}">
			<input type="hidden" value="${rows.goal_is }" name="goalId" />
			<option value="${rows.date }">
		</c:forEach>
	</datalist>
	
	<sql:query dataSource="${con }" sql="select * from exercise_date A inner join exercise_date_exercise B on 
	A.goal_id = B.exercise_date_goal_id inner join exercise C on B.exercise_exercise_id = C.exercise_id inner 
	join member_exercise D on C.exercise_id = D.exercise_goal_id where D.member_memberid = ${sessionScope.id}"
	 var="goals2" />
	 <c:forEach var="list" items="${goals2.rows }">
	 	<input type="hidden" name="day" value="${list.day }" />
	 	<input type="hidden" name="cardio" value="${list.cardio_time }" />
	 	<input type="hidden" name="weights" value="${list.weight_time }" />
	 	<input type="hidden" name="casual" value="${list.casw_time }" />
	 </c:forEach>
	<input type="submit" class="btn btn-outline-primary" value="View Previous Goal" />
</form>

</body>
</html>