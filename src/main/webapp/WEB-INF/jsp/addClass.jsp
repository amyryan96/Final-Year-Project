<!Doctype html>
<html>
<style>
body {
	background-image: url("images/gym2.jpg");
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
					<li><a href="/empschedule">View Your Schedule</a></li>
					<li><a href="/createClass">Create a Gym Class</a></li>


				</ul>
			</div>
		</div>
		</div>
	<div class="container">
		<!---heading---->
		<header class="heading"> Create a Gym Class </header>
		<hr></hr>
	<!-- 	<h2 style="font-family: Roboto, sans-serif; color: black; font-weight: bold;">Choose the type of class you wish to
			attend</h2> -->
			<form class="form-horizontal" method="post" action="addClass">

			<input type="hidden" name="Id" value="${ ClassDetails.classId}"> 
			<div align = "left">
			Please enter the name of the class
			<input type="text" name="className" value="${ClassDetails.className }" /> 

			<br/>Choose class type <br/>
			<input type="radio" name="classType" value="spin"> <span>Spin Class</span><br>
			<input type="radio" name="classType" value="cardio"> <span>Cardio Class</span><br> 
			<input type="radio" name="classType" value="weights"><span>Weights Training</span>

		<h2 style="font-family: Roboto, sans-serif; color: black; font-weight: bold;">

		Choose the time of day you would like to schedule the class</h2>
		<input type="radio" name="classTime" value="morning"><span>Morning Session</span><br>
		<input type="radio" name="classTime" value="afternoon"><span> Afternoon Session</span><br> 
		<input type="radio" name="classTime" value="evening"><span>Evening Session</span><br>

		Please enter the date of the class<br>
		<input type="text" name = "date" value="${ClassDetails.date}"> <br>

		Please enter the max capacity of the class<br>
		<input type="text" name = "classQuantity" value="${ClassDetails.classQuantity}"> <br>

		</form>
		<br>
		<input type="submit" value="Submit">
		</div>

		<form form class="form-horizontal" method="post" action="logoutMember">
				<input type="submit" class="btn btn-warning" value="Logout" name="logoutMember" />
				</form>
</body>
</html>