<!--
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gym Register Page</title>
</head>
<body>
	<h1>Registration</h1>
	<div align="center">
		<form class="form-horizontal" method="POST" action="addMember">
			<input type="hidden" name="Id" value="${member.Id}">
			<div class="form-group">
				<label class="control-label col-md-3">Name</label>
				<div class="col-md-7">
					<input type="text" class="form-control" name="name"
						value="${member.name}" />
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-md-3">Email</label>
				<div class="col-md-7">
					<input type="text" class="form-control" name="email"
						value="${member.email}" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">Phone Number</label>
				<div class="col-md-7">
					<input type="text" class="form-control" name="phoneNum"
						value="${member.phoneNum}" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">Password</label>
				<div class="col-md-7">
					<input type="password" class="form-control" name="password"
						value="${member.password}" />
				</div>
			</div>
			<div class="form-group">
				<input type="submit" class="btn btn-primary" value="register" />
			</div>
	</div>
	</form>

</body>
</html>-->




<!--  <!DOCTYPE html>
<html>
<style>
.colorgraph {
	height: 5px;
	border-top: 0;
	background: #c4e17f;
	border-radius: 5px;
	background-image: -webkit-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%,
		#f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%,
		#db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%,
		#669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
	background-image: -moz-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%,
		#f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%,
		#db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%,
		#669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
	background-image: -o-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca
		25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe
		50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1
		87.5%, #62c2e4 87.5%, #62c2e4);
	background-image: linear-gradient(to right, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca
		25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe
		50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1
		87.5%, #62c2e4 87.5%, #62c2e4);
}
</style>
<head>
<title>Gym Register Page</title>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<meta charset="ISO-8859-1">
<title>Gym Login Page</title>
</head>
<div class="container">

	<div class="row" style="margin-top: 20px">
		<div
			class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
			<form role="form">
				<fieldset>
					<h1>Registration</h1>
					<hr class="colorgraph">
					<div class="form-group">
						<form class="form-horizontal" method="POST" action="addMember">
							<input type="hidden" name="Id" value="${member.Id}"> <label
								class="control-label col-md-3"> Enter Name</label>
							<div class="col-md-7">
								<input type="text" class="form-control" name="name"
									value="${member.name}" />
							</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Email</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="email"
								value="${member.email}" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Phone Number</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="phoneNum"
								value="${member.phoneNum}" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Password</label>
						<div class="col-md-7">
							<input type="password" class="form-control" name="password"
								value="${member.password}" />
						</div>
					</div>
					<hr class="colorgraph">
					<div class="row">
						<div class="col-xs-6 col-sm-6 col-md-6">
							<input type="submit" class="btn btn-primary" value="Register" />
						</div>

					</div>
				</fieldset>
			</form>
		</div>
	</div>

</div>
</html>-->




<!------ Include the above in your HEAD tag ---------->

<!Doctype html>
<html>
<style>
body {
	background-image: url("images/gym.jpg"); /* url(https://s3.envato.com/files/243754334/primag.jpg); */
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
		url(https://image.freepik.com/free-vector/dark-blue-blurred-background_1034-589.jpg);
		/* ropes.jfif; */
	border-style: 1px solid grey;
	margin: 0 auto;
	text-align: center;
	opacity: 0.8;
	margin-top: 67px;
	box-shadow: 2px 5px 5px 0px #eee;
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
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
	<!-----For email---->
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
	<!-----For Password and confirm password---->
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
						<input type="radio" name="gender" id="gender" value="boy">Male</input>
					</div>

					<div class="col-xs-4 female">
						<input type="radio" name="gender" id="gender" value="girl">Female</input>
					</div>

				</div>
				<div class="col-sm-12">
					<input type="submit" class="btn btn-warning" value="Register" />
				</div>
			</div>
		</div>


	</div>
	</form>
</body>
</html>
