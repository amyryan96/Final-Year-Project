<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>


<!Doctype html>
<html>
<style>
body {
background-image:
/* url("images/gym.jpg");  */
background-repeat : no-repeat;
background-size: cover;
width: 100%;
height: 100vh;
overflow: auto;
background-repeat: no-repeat;
}

/*-----for border----*/
.container {
font-family: Roboto, sans-serif;
background-image:
/* url("images/plain-black-backgorund.jpg"); */
/* url(https://image.freepik.com/free-vector/dark-blue-blurred-background_1034-589.jpg); */

border-style: 1px solid grey;
margin: 0 auto;
text-align: center;
opacity: 0.8;
margin-top: 67px;
/* box-shadow: 2px 5px 5px 0px #eee; */
max-width: 500px;
padding-top: 10px;
height: 200px;
margin-top: 166px;
}

/*---for heading-----*/
.heading {
text-decoration: bold;
text-align: center;
font-size: 30px;
color: white;
font-weight: bold;
padding-top: 10px;
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
<title>Food Diary Logs</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<div role="navigation">
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Gym HomePage</a>
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
						<form class="form-horizontal" method="post" action="logoutMember">
							<input type="submit" class="btn btn-outline-primary"
								value="Logout" name="logoutMember" />
						</form>
					</li>
				</ul>

			</div>
</nav>
</div> 


<div class="container-text-center">
<!---heading---->
<header class="heading"> Welcome To Your Food Log History </header>
<hr></hr>
<div class = "table-responsive">
<table class="table table-striped table-bordered">
<thead>
<tr>
<th>Date</th>
<th>Time of Day</th>
<th>Food Eaten</th>
<th>Calories</th>
</tr>
</thead>
<tbody>
<sql:setDataSource var="con" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/fypdbnew" user="root" password="root" /> <!-- Connects to database -->
<sql:query dataSource="${con }" sql="select * from food_diary where diary_id in(select diary_diary_id from member_diary where member_memberid = ${sessionScope.id})" var="diaries" /> <!-- Select statement for class in selected database  -->


<div align = "center">
<c:forEach var="row" items="${diaries.rows}">
<tr>
<td><c:out value="${row.date}" /></td>
<td> <c:out value="${row.time_of_day}" /></td>
<td><c:out value="${row.food_type}" /></td>
<td><c:out value="${row.calories}" /></td>
</tr>

<br/><br/>
</c:forEach>
</div>
</tbody>

</table>
</div>

</div>
</body>
</html>
