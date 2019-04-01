<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!Doctype html>
<html>
<style>
body {
	background-image: /* url("images/gym2.jpg"); */
	/* url(https://s3.envato.com/files/243754334/primag.jpg); */
	background-repeat: no-repeat;
	background-size: cover;
	width: 100%;
	height: 100vh;
	overflow: auto;
}

/*-----for border----*/
.container {
	font-family: Roboto, sans-serif;
	background-image: url("images/light-grey-background.jpg");
	border-style: 1px solid grey;
	margin: 0 auto;
	text-align: center;
	opacity: 0.8;
	margin-top: 67px;
	box-shadow: 2px 5px 5px 0px #eee;
	max-width: 800px;
	padding-top: 10px;
	height: 500px;
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
	box-shadow: 2px 1px 2px 3px #99ccff;
	background: #000000;
	color: #fff;
	transition: background-color 1.15s ease-in-out, border-color 1.15s
		ease-in-out, box-shadow 1.15s ease-in-out;
}

input[type="radio"]:checked + span
{
    font-weight: bold;
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
		<a href="/welcome" class="navbar-brand">Gym HomePage</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="/login">Login</a></li>
					<li><a href="/bookClass">Book a Gym Class</a></li>
					<li><a href="/foodDiary">Log Your Food for the day</a></li>
				</ul>
			</div>
		</div>
		</div>
	
	<sql:setDataSource var="con" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/fyp_db1" user="root" password="root" /> <!-- Connects to database -->
	<sql:query dataSource="${con }" sql="select * from class_details" var="classes" /> <!-- Select statement for class in selected database  -->
		
		<div align = "center">
		<c:forEach var="rows" items="${classes.rows}">
			<input type="hidden" name="classId" value="${rows.class_id }" />
			<input type="radio" name="classToBook" value="${rows.class_id }">
			Class Name: <c:out value="${rows.class_name}" /><br>
			Class Type: <c:out value="${rows.class_type}" /><br> 
			Date: <c:out value="${rows.date}" /></a> <br>
			Time: <c:out value="${rows.class_time}" />
			<br/><br/>
		</c:forEach>
		</div>
		<form form class="form-horizontal" method="post" action="logoutMember">
				<input type="submit" class="btn btn-warning" value="Logout" name="logoutMember" />
				</form>
</body>
</html>
