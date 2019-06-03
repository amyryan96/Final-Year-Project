
<!Doctype html>
<html>
<style>
body {
	background-image: url("images/gym.jpg"); 
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
		/* url(https://image.freepik.com/free-vector/dark-blue-blurred-background_1034-589.jpg); */
		
	border-style: 1px solid grey;
	margin: 0 auto;
	text-align: center;
	opacity: 0.8;
	margin-top: 67px;
	/* box-shadow: 2px 5px 5px 0px #eee; */
	max-width: 500px;
	padding-top: 10px;
	height: 425px;
	margin-top: 166px;
}
/*--- for label of first and last name---*/
.firstname {
	margin-left: 1px;
	font-family: sans-serif;
	font-size: 14px;
	color: white;
	margin-top: 5px;
	text-align: left;
}

#fname {
	margin-top: 5px;
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
/*-------for email----------*/
/*------label----*/
#email {
	margin-top: 5px;
}
/*-----------for Password--------*/
/*-------label-----*/
.mail {
	/* margin-left: 44px; */
	font-family: sans-serif;
	color: white;
	font-size: 14px;
	margin-top: 13px;
}

.pass {
	color: white;
	margin-top: 9px;
	font-size: 14px;
	font-family: sans-serif;
	/* margin-left: 6px; */
	
}

#password {
	margin-top: 6px;
}
/*------------for phone Number--------*/
/*----------label--------*/
.pno {
	font-size: 18px;
	margin-left: -13px;
	margin-top: 10px;
	color: #ff9;
	text-align: left;
}

/*--------------for Gender---------------*/
/*--------------label---------*/
.gender {
	color: white;
	font-family: sans-serif;
	font-size: 14px;
	/* margin-left: 0px; */
	margin-top: 8px;
}

/*---------- for Input type--------*/
.col-xs-4.male {
	color: white;
	font-size: 13px;
	margin-top: 9px;
	padding-bottom: 16px;
}

.col-xs-4.female {
	color: white;
	font-size: 13px;
	margin-top: 9px;
	padding-bottom: 16px;
	padding-right: 95px;
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
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>

<meta charset="UTF-8">
<title>Registration Form</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<div class="container">
		<!---heading---->
		<header class="heading"> Register for Your Gym Membership </header>
		<hr></hr>
		 <!---Form starting---->
		 <h3 style="font-family: Roboto, sans-serif; color: white; font-size: 25px; font-weight: bold;">Register Member</h3>
		<div class="row ">
			<!--- For Name---->
			<div class="col-sm-12">
				<div class="row">
					<div class="col-xs-4">
					
						<form class="form-horizontal" method="POST" action="addMember">
						
							<input type="hidden" name="Id" value="${member.Id}"> 
								<div align = "left">
							<label class="firstname">Enter Name </label>
					</div>
					</div>
					<div class="col-xs-8">
						<input type="text" name="name" id="fname"
							placeholder="Enter Your Name" class="form-control "
							value="${member.name}" />
					</div>
				</div>
			</div>
	<!-----For email---->
			<div class="col-sm-12">
				<div class="row">
					<div class="col-xs-4" align = "left">
					
						<label class="mail">Enter Email </label>
					
					</div>
					<div class="col-xs-8">
					<input type="email" name="email" id="email"
							placeholder="Enter Your Email" class="form-control"
							value="${member.email}" />
					</div>
				</div>
			</div>
	<!-----For phone---->
			<div class="col-sm-12">
				<div class="row">
					<div class="col-xs-4">
					<div align = "left">
						<label class="mail">Enter Your Phone Number </label>
					</div>
					</div>
					<div class="col-xs-8">
					&nbsp
					<input type="phoneNum" name="phoneNum" id="phonenum"
							placeholder="Enter Your Number" class="form-control"
							value="${member.phoneNum}" />
					</div>
				</div>
			</div>
	<!-----For Password ---->
			<div class="col-sm-12">
				<div class="row">
					<div class="col-xs-4">
					<div align = "left">
						<label class="pass">Enter Password </label>
					</div>
					</div>
					<div class="col-xs-8">
						<input type="password" name="password" id="password"
							placeholder="Enter Your Password" class="form-control"
							value="${member.password}" />
					</div>
				</div>
			</div>

			<!-----------For Phone number-------->
			<div class="col-sm-12">
				<div class="row">
					<div class="col-xs-4 ">
						<label class="gender">Gender </label>
					</div>
	
					<div class="col-xs-4 male">
						<input type="radio" name="male" id="gender" value="${member.gender}">Male</input>
					</div>

					<div class="col-xs-4 female">
						<input type="radio" name="female" id="gender" value="${member.gender}">Female</input>
					</div>

				</div>
				<div class="col-sm-12">
					<input type="submit" class="btn btn-warning" value="Register" />
				</div>
			</div>
			</form>
		</div> 
	<br>
	<br>
	
<h3 style="font-family: Roboto, sans-serif; color: white; font-size: 25px; font-weight: bold;">Register Employee</h3>
<div class="row ">
			<!--- For Name---->
			<div class="col-sm-12">
				<div class="row">
					<div class="col-xs-4">
					
						<form class="form-horizontal" method="POST" action="addEmployee">
						
							<input type="hidden" name="Id" value="${employee.Id}"> 
								<div align = "left">
							<label class="firstname">Enter Name </label>
					</div>
					</div>
					<div class="col-xs-8">
						<input type="text" name="name" id="fname"
							placeholder="Enter Your Name" class="form-control "
							value="${employee.name}" />
					</div>
				</div>
			</div>
	<!-----For email---->
			<div class="col-sm-12">
				<div class="row">
					<div class="col-xs-4" align = "left">
					
						<label class="mail">Enter Email </label>
					
					</div>
					<div class="col-xs-8">
					<input type="email" name="email" id="email"
							placeholder="Enter Your Email" class="form-control"
							value="${employee.email}" />
					</div>
				</div>
			</div>
	<!-----For phone---->
			<div class="col-sm-12">
				<div class="row">
					<div class="col-xs-4">
					<div align = "left">
						<label class="mail">Enter Your Phone Number </label>
					</div>
					</div>
					<div class="col-xs-8">
					&nbsp
					<input type="phoneNum" name="phoneNum" id="phonenum"
							placeholder="Enter Your Number" class="form-control"
							value="${employee.phone}" />
					</div>
				</div>
			</div>
	<!-----For Password ---->
			<div class="col-sm-12">
				<div class="row">
					<div class="col-xs-4">
					<div align = "left">
						<label class="pass">Enter Password </label>
					</div>
					</div>
					<div class="col-xs-8">
						<input type="password" name="password" id="password"
							placeholder="Enter Your Password" class="form-control"
							value="${employee.password}" />
					</div>
				</div>
			</div>

				</div>
				&nbsp &nbsp &nbsp &nbsp
				<div class="col-sm-12">
					<input type="submit" class="btn btn-warning" value="Register" />
				</div>
			
			</form>
	

</body>
</html>
