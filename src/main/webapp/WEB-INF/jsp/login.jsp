

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
		border-style : 1px solid grey;
	margin: 0 auto;
	text-align: center;
	opacity: 0.8;
	margin-top: 67px;
	/* box-shadow: 2px 5px 5px 0px #eee; */
	max-width: 500px;
	padding-top: 10px;
	height: 250px;
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
	margin-top: 9px;
}

#password {
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
	box-shadow: 2px 1px 2px 3px #99ccff;
	background: #5900a6;
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
<title>Login Form</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<div class="container">
		<!---heading---->
		<header class="heading"> Login To Your Gym </header>
		<hr></hr>
		<!---Form starting---->
		<h3 style="font-family: Roboto, sans-serif; color: white; font-size: 25px; font-weight: bold;">Login Member</h3>
		<div class="row ">
			<div class="col-sm-12">
				<div class="row">
					<div class="col-xs-4">
						
						<form class="form-horizontal" method="post" action="loginMember">
							<!-----For email---->
							<div align="left">
								<label class="mail">Enter Email </label>
							</div>
					</div>
					<div class="col-xs-8">
						<input type="email" name="email" id="email"
							placeholder="Enter Your Email" class="form-control"
							value="${member.email}" required/>
					</div>
				</div>
			</div>


			<!-----For Password and confirm password---->
			<div class="col-sm-12">
				<div class="row">
					<div class="col-xs-4">
						<div align="left">
							<label class="pass">Enter Password </label>
						</div>
					</div>
					<div class="col-xs-8">
						<input type="password" name="password" id="password"
							placeholder="Enter Your Password" class="form-control"
							value="${member.password}" required/>
					</div>
				</div>
			</div>
		</div>
		&nbsp &nbsp &nbsp &nbsp
		<div class="col-sm-12">
			<input type="submit" class="btn btn-warning" value="Login" />
		</div>
		</form>
		
		<br>
		<br>
		<br>
	<h3 style="font-family: Roboto, sans-serif; color: white; font-size: 25px; font-weight: bold;">Login Employee</h3>
		<div class="row ">
			<div class="col-sm-12">
				<div class="row">
					<div class="col-xs-4">
						<form class="form-horizontal" method="post" action="loginEmployee">
							<!-----For email---->
							<div align="left">
								<label class="mail">Enter Email </label>
							</div>
					</div>
					<div class="col-xs-8">
						<input type="email" name="email" id="email"
							placeholder="Enter Your Email" class="form-control"
							value="${employee.email}" required/>
					</div>
				</div>
			</div>


			<!-----For Password and confirm password---->
			<div class="col-sm-12">
				<div class="row">
					<div class="col-xs-4">
						<div align="left">
							<label class="pass">Enter Password </label>
						</div>
					</div>
					<div class="col-xs-8">
						<input type="password" name="password" id="password"
							placeholder="Enter Your Password" class="form-control"
							value="${employee.password}" required/>
					</div>
				</div>
			</div>
		</div>
		&nbsp &nbsp &nbsp &nbsp
		<div class="col-sm-12">
			<input type="submit" class="btn btn-warning" value="Login" />
		</div>
		</form>
		
		
		
	</div>


</body>
</html>
