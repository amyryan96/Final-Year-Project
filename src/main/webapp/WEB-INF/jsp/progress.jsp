
<!DOCTYPE HTML>
<html>
<style>
body {
	background-image: /* url("images/gym.jpg"); */
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
	<div class="container">
		<h3
			style="font-family: Roboto, sans-serif; color: black; font-size: 25px; font-weight: bold;">
			Enter Weekly Exercise</h3>
		<form class="form-horizontal" method="post" action="addExercise">
			<div class="row ">
			<h1 style="font-family: Roboto, sans-serif; color: black; font-size: 10px; font-weight: bold;">Choose week starting: </h1>
			<input type="date" name="dateWeek" /> 
				<div class="col-sm-12">
					<div class="row">
						<div class="col-xs-4">

							<input style="color: black;" type="checkbox" name="day"
								value="Sunday" checked><span>Sunday</span><br> 
							<div align="left">
								<label class="exer" style="color: black;">Enter Time
									Spent on Cardio (in minutes)</label>
							</div>
						</div>

						<div class="col-xs-8">
							<input type="text" name="exercise1" id="cardioTime"
								placeholder="Enter Your Cardio Time" class="form-control"
								<%-- //value="${exercise.cardioTime}" --%> required/>
						</div>
					</div>
				</div>
				&nbsp &nbsp &nbsp &nbsp
				<div class="col-sm-12">
					<div class="row">
						<div class="col-xs-4">
							<div align="left">
								<label class="exer" style="color: black;">Enter Time
									Spent on Weight Training (in minutes)</label>
							</div>
						</div>
						<div class="col-xs-8">
							<input type="text" name="exercise2" id="weightTime"
								placeholder="Enter Your Weight Time" class="form-control"
								<%-- value="${exercise.weightTime}"  --%> required/>
						</div>
					</div>
				</div>

				<div class="col-sm-12">
					<div class="row">
						<div class="col-xs-4">
							<div align="left">
								<label class="exer" style="color: black;">Enter Time
									Spent on Casual Exercise (in minutes)</label>
							</div>
						</div>
						<div class="col-xs-8">
							<input type="text" name="exercise3" id="caswTime"
								placeholder="Enter Your Casual Exercise" class="form-control"
								<%-- value="${exercise.caswTime}"  --%> required/>
						</div>
					</div>
				</div>
				
				<div class="col-sm-12">
					<div class="row">
						<div class="col-xs-4">
						<input style="color: black;" type="checkbox" name="day1" value="Monday" checked><span>Monday</span><br>

							<div align="left">
								<label class="exer" style="color: black;">Enter Time
									Spent on Cardio (in minutes)</label>
							</div>
						</div>

						<div class="col-xs-8">
							<input type="text" name="exercise1M" id="cardioTime"
								placeholder="Enter Your Cardio Time" class="form-control"
								<%-- //value="${exercise.cardioTime}" --%> required/>
						</div>
					</div>
				</div>
				&nbsp &nbsp &nbsp &nbsp
				<div class="col-sm-12">
					<div class="row">
						<div class="col-xs-4">
							<div align="left">
								<label class="exer" style="color: black;">Enter Time
									Spent on Weight Training (in minutes)</label>
							</div>
						</div>
						<div class="col-xs-8">
							<input type="text" name="exercise2M" id="weightTime"
								placeholder="Enter Your Weight Time" class="form-control"
								<%-- value="${exercise.weightTime}"  --%> required/>
						</div>
					</div>
				</div>

				<div class="col-sm-12">
					<div class="row">
						<div class="col-xs-4">
							<div align="left">
								<label class="exer" style="color: black;">Enter Time
									Spent on Casual Exercise (in minutes)</label>
							</div>
						</div>
						<div class="col-xs-8">
							<input type="text" name="exercise3M" id="caswTime"
								placeholder="Enter Your Casual Exercise" class="form-control"
								<%-- value="${exercise.caswTime}"  --%> required/>
						</div>
					</div>
				</div>
				
				<div class="col-sm-12">
					<div class="row">
						<div class="col-xs-4">

							<input style="color: black;" type="checkbox" name="day2"
								value="Tuesday" checked><span>Tuesday</span><br> 
							<div align="left">
								<label class="exer" style="color: black;">Enter Time
									Spent on Cardio (in minutes)</label>
							</div>
						</div>

						<div class="col-xs-8">
							<input type="text" name="exerciseT1" id="cardioTime"
								placeholder="Enter Your Cardio Time" class="form-control"
								<%-- //value="${exercise.cardioTime}" --%> required/>
						</div>
					</div>
				</div>
				&nbsp &nbsp &nbsp &nbsp
				<div class="col-sm-12">
					<div class="row">
						<div class="col-xs-4">
							<div align="left">
								<label class="exer" style="color: black;">Enter Time
									Spent on Weight Training (in minutes)</label>
							</div>
						</div>
						<div class="col-xs-8">
							<input type="text" name="exerciseT2" id="weightTime"
								placeholder="Enter Your Weight Time" class="form-control"
								<%-- value="${exercise.weightTime}"  --%> required/>
						</div>
					</div>
				</div>

				<div class="col-sm-12">
					<div class="row">
						<div class="col-xs-4">
							<div align="left">
								<label class="exer" style="color: black;">Enter Time
									Spent on Casual Exercise (in minutes)</label>
							</div>
						</div>
						<div class="col-xs-8">
							<input type="text" name="exerciseT3" id="caswTime"
								placeholder="Enter Your Casual Exercise" class="form-control"
								<%-- value="${exercise.caswTime}"  --%> required/>
						</div>
					</div>
				</div>
				
				<div class="col-sm-12">
					<div class="row">
						<div class="col-xs-4">
						<input style="color: black;" type="checkbox" name="day4" value="Wednesday" checked><span>Wednesday</span><br>

							<div align="left">
								<label class="exer" style="color: black;">Enter Time
									Spent on Cardio (in minutes)</label>
							</div>
						</div>

						<div class="col-xs-8">
							<input type="text" name="exercise1W" id="cardioTime"
								placeholder="Enter Your Cardio Time" class="form-control"
								<%-- //value="${exercise.cardioTime}" --%> required/>
						</div>
					</div>
				</div>
				&nbsp &nbsp &nbsp &nbsp
				<div class="col-sm-12">
					<div class="row">
						<div class="col-xs-4">
							<div align="left">
								<label class="exer" style="color: black;">Enter Time
									Spent on Weight Training (in minutes)</label>
							</div>
						</div>
						<div class="col-xs-8">
							<input type="text" name="exercise2W" id="weightTime"
								placeholder="Enter Your Weight Time" class="form-control"
								<%-- value="${exercise.weightTime}"  --%> required/>
						</div>
					</div>
				</div>

				<div class="col-sm-12">
					<div class="row">
						<div class="col-xs-4">
							<div align="left">
								<label class="exer" style="color: black;">Enter Time
									Spent on Casual Exercise (in minutes)</label>
							</div>
						</div>
						<div class="col-xs-8">
							<input type="text" name="exercise3W" id="caswTime"
								placeholder="Enter Your Casual Exercise" class="form-control"
								<%-- value="${exercise.caswTime}"  --%> required/>
						</div>
					</div>
				</div>
				<div class="col-sm-12">
					<div class="row">
						<div class="col-xs-4">
						<input style="color: black;" type="checkbox" name="day5" value="Thursday" checked><span>Thursday</span><br>

							<div align="left">
								<label class="exer" style="color: black;">Enter Time
									Spent on Cardio (in minutes)</label>
							</div>
						</div>

						<div class="col-xs-8">
							<input type="text" name="exercise1T" id="cardioTime"
								placeholder="Enter Your Cardio Time" class="form-control"
								<%-- //value="${exercise.cardioTime}" --%> required/>
						</div>
					</div>
				</div>
				&nbsp &nbsp &nbsp &nbsp
				<div class="col-sm-12">
					<div class="row">
						<div class="col-xs-4">
							<div align="left">
								<label class="exer" style="color: black;">Enter Time
									Spent on Weight Training (in minutes)</label>
							</div>
						</div>
						<div class="col-xs-8">
							<input type="text" name="exercise2T" id="weightTime"
								placeholder="Enter Your Weight Time" class="form-control"
								<%-- value="${exercise.weightTime}"  --%> required/>
						</div>
					</div>
				</div>

				<div class="col-sm-12">
					<div class="row">
						<div class="col-xs-4">
							<div align="left">
								<label class="exer" style="color: black;">Enter Time
									Spent on Casual Exercise (in minutes)</label>
							</div>
						</div>
						<div class="col-xs-8">
							<input type="text" name="exercise3T" id="caswTime"
								placeholder="Enter Your Casual Exercise" class="form-control"
								<%-- value="${exercise.caswTime}"  --%> required/>
						</div>
					</div>
				</div>
				<div class="col-sm-12">
					<div class="row">
						<div class="col-xs-4">
						<input style="color: black;" type="checkbox" name="day5" value="Friday" checked><span>Friday</span><br>

							<div align="left">
								<label class="exer" style="color: black;">Enter Time
									Spent on Cardio (in minutes)</label>
							</div>
						</div>

						<div class="col-xs-8">
							<input type="text" name="exercise1F" id="cardioTime"
								placeholder="Enter Your Cardio Time" class="form-control"
								<%-- //value="${exercise.cardioTime}" --%> required/>
						</div>
					</div>
				</div>
				&nbsp &nbsp &nbsp &nbsp
				<div class="col-sm-12">
					<div class="row">
						<div class="col-xs-4">
							<div align="left">
								<label class="exer" style="color: black;">Enter Time
									Spent on Weight Training (in minutes)</label>
							</div>
						</div>
						<div class="col-xs-8">
							<input type="text" name="exercise2F" id="weightTime"
								placeholder="Enter Your Weight Time" class="form-control"
								<%-- value="${exercise.weightTime}"  --%> required/>
						</div>
					</div>
				</div>

				<div class="col-sm-12">
					<div class="row">
						<div class="col-xs-4">
							<div align="left">
								<label class="exer" style="color: black;">Enter Time
									Spent on Casual Exercise (in minutes)</label>
							</div>
						</div>
						<div class="col-xs-8">
							<input type="text" name="exercise3F" id="caswTime"
								placeholder="Enter Your Casual Exercise" class="form-control"
								<%-- value="${exercise.caswTime}"  --%> required/>
						</div>
					</div>
				</div>
				<div class="col-sm-12">
					<div class="row">
						<div class="col-xs-4">
						<input style="color: black;" type="checkbox" name="day6" value="Saturday" checked><span>Saturday</span><br>

							<div align="left">
								<label class="exer" style="color: black;">Enter Time
									Spent on Cardio (in minutes)</label>
							</div>
						</div>

						<div class="col-xs-8">
							<input type="text" name="exercise1S" id="cardioTime"
								placeholder="Enter Your Cardio Time" class="form-control"
								<%-- //value="${exercise.cardioTime}" --%> required/>
						</div>
					</div>
				</div>
				&nbsp &nbsp &nbsp &nbsp
				<div class="col-sm-12">
					<div class="row">
						<div class="col-xs-4">
							<div align="left">
								<label class="exer" style="color: black;">Enter Time
									Spent on Weight Training (in minutes)</label>
							</div>
						</div>
						<div class="col-xs-8">
							<input type="text" name="exercise2S" id="weightTime"
								placeholder="Enter Your Weight Time" class="form-control"
								<%-- value="${exercise.weightTime}"  --%> required/>
						</div>
					</div>
				</div>

				<div class="col-sm-12">
					<div class="row">
						<div class="col-xs-4">
							<div align="left">
								<label class="exer" style="color: black;">Enter Time
									Spent on Casual Exercise (in minutes)</label>
							</div>
						</div>
						<div class="col-xs-8">
							<input type="text" name="exercise3S" id="caswTime"
								placeholder="Enter Your Casual Exercise" class="form-control"
								<%-- value="${exercise.caswTime}"  --%> required/>
						</div>
					</div>
				</div>
				
</div>

			&nbsp &nbsp &nbsp &nbsp
			<div class="col-sm-12">
				<input type="submit" class="btn btn-warning" value="Input" />
			</div>
		</form>
	</div>




	<%-- <sql:setDataSource var="con" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/fypdb" user="root" password="root" /> <!-- Connects to database -->
<sql:query dataSource="${con }" sql="select * from food_diary where diary_id in(select diary_diary_id from member_diary where member_memberid = ${sessionScope.id})" var="diaries" /> 

 --%>


</body>
</html>
