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
	margin-top: 90px;
	box-shadow: 2px 5px 5px 0px #eee;
	max-width: 550px;
	padding-top: 15px;
	height: 425px;
	margin-top: 166px;
}
#day {
	margin-top: 5px;
}
.day{
	
	font-family: sans-serif;
	color: black;
	font-size: 14px;
	margin-top: 13px;
	
}
.date {
	margin-left: 1px;
	font-family: sans-serif;
	font-size: 14px;
	color: black;
	margin-top: 5px;
	text-align: left;
}

#date {
	margin-top: 5px;
}

#ate {
	margin-top: 5px;
}

.ate{
	/* margin-left: 44px; */
	font-family: sans-serif;
	color: black;
	font-size: 14px;
	margin-top: 13px;
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


/*------------For submit button---------*/
.sbutton {
	color: #82817a;
	font-size: 20px;
	border: 1px solid white;
	background-color: #080808;
	width: 30%;
	margin-left: 41%;
	margin-top: 14px;
	box-shadow: 0px 2px 2px 0px white;
}

.btn.btn-warning:hover {
	box-shadow: 2px 1px 2px 3px #808080;
	background: #000000;
	/* color: #fff; */
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
<title>Food Diary</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<div role="navigation">
		<div class="navbar navbar-inverse">
		<a href="/welcome" class="navbar-brand">Gym HomePage</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="/bookClass">Book a Gym Class</a></li>
					<li><a href="/foodDiary">Log Your Food for the day</a></li>
					<li><a href="/viewFoodLogs">View Previous Food Diary Logs</a></li>
					<div align = "left">
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
		<header class="heading"> Welcome To Your Food Diary Log System </header>
		<hr></hr>
		<form class="form-horizontal" method="post" action="addfoodDiary">
		<input type="hidden" name="Id" value="${foodDiary.diaryId}"> 
								
			<div class="col-sm-12">
				<div class="row">
					<div class="col-xs-10">
					<div align = "left">
							<label class="date">Enter Date </label>
					</div>
					<div class="col-xs-60">
						<input type="date" name="date" id="date"
							placeholder="Enter The Date" class="form-control "
							value="${foodDairy.date}" />
					</div>
					</div>
				</div>
				</div>
			<div class="col-sm-12">
				<div class="row">
					<div class="col-xs-10">
					<div align = "left">
						<label class="day">Enter The Day Of The Week </label>
					</div>
					<div class="col-xs-60">
					<input type="text" name="dayofweek" id="dayofweek"
							placeholder="Enter The Day Of The Week" class="form-control"
							value="${foodDiary.dayOfWeek}" />
					</div>
				</div>
			</div>
			</div>
			<div class="col-sm-12">
				<div class="row">
					<div class="col-xs-10">
					<div align = "left">
						<label class="ate">Enter The Food You Ate </label>
					</div>
					<div class="col-xs-60">
					<input type="text" name="foodType" id="foodType"
							placeholder="Enter The Food You Ate" class="form-control"
							value="${foodDiary.foodType}" />
					</div>
				</div>
			</div>
			</div>
			<div class="col-sm-12">
				<div class="row">
					<div class="col-xs-10">
					<div align = "left">
						<label class="ate">Enter The Amount of Calories </label>
					</div>
					<div class="col-xs-60">
					<input type="text" name="calories" id="calories"
							placeholder="Enter The Amount of Calories" class="form-control"
							value="${foodDiary.calories}" />
					</div>
				</div>
			</div>
			</div>
			
		&nbsp
		<br>
		<div class="col-sm-12">
					<input type="submit" class="btn btn-warning" value="Input" />
				</div>
	</form>
	
	<!-- <form form class="form-horizontal" method="post" action="logoutMember">
				<input type="submit" class="btn btn-warning" value="Logout" name="logoutMember" />
				</form> -->
</body>
</html>
