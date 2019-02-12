<!--
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gym Login Page</title>
</head>
<body>
	<h1>Login</h1>
	<div align="center">
		<form class="form-horizontal" method="post" action="loginMember">
			<!--  <input type="hidden" name="Id" value="${member.Id}">
			<c:if test="${not empty failure}">
				<div class="alert alert-danger">
					<c:out value="${failure}"></c:out>
				</div>
			</c:if>-->
			<!--  <div class="form-group">
				<label class="control-label col-md-3">Enter Email</label>
				<div class="col-md-7">
					<input type="text" class="form-control" name="email"
						value="${member.email}" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">Enter Password</label>
				<div class="col-md-7">
					<input type="password" class="form-control" name="password"
						value="${member.password}" />
				</div>
			</div>
			<div class="form-group">
				<input type="submit" class="btn btn-primary" value="login" />
			</div>
		</form>
	</div>

</body>
</html>-->


<!------ Include the above in your HEAD tag ---------->
<!--  
<!DOCTYPE html>
<html>
<style>
.colorgraph {
  height: 5px;
  border-top: 0;
  background: #c4e17f;
  border-radius: 5px;
  background-image: -webkit-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: -moz-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: -o-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: linear-gradient(to right, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
}
</style>
<head>
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
					<h2>Please Sign In To The Gym</h2>
					<hr class="colorgraph">
					<div class="form-group">
					<form class="form-horizontal" method="post" action="loginMember">
					<label class="control-label col-md-3">Enter Email</label>
						<input type="text" class="form-control" name="email"
							value="${member.email}" />
					</div>
					<div class="form-group">
					<label class="control-label col-md-3">Enter Password</label>
						<input type="password" class="form-control" name="password"
							value="${member.password}" />
					</div>
					<span class="button-checkbox">
						<button type="button" class="btn" data-color="info">Remember
							Me</button> <input type="checkbox" name="remember_me" id="remember_me"
						checked="checked" class="hidden"> <a href=""
						class="btn btn-link pull-right">Forgot Password?</a>
					</span>
					<hr class="colorgraph">
					<div class="row">
						<div class="col-xs-6 col-sm-6 col-md-6">
							<input type="submit" class="btn btn-primary" value="Login" />
						</div>
						<div class="col-xs-6 col-sm-6 col-md-6">
							<a href="/register" class="btn btn-lg btn-primary btn-block">Register</a>
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
		<header class="heading"> Login To Your Gym </header>
		<hr></hr>
		<!---Form starting---->
		<div class="row ">
			<div class="col-sm-12">
				<div class="row">
					<div class="col-xs-4">
						<form class="form-horizontal" method="post" action="loginMember">
	<!-----For email---->
					<div align = "left">
						<label class="mail">Enter Email </label>
					</div>
					</div>
					<div class="col-xs-8">
						<input type="email" name="email" id="email"
							placeholder="Enter Your Email" class="form-control"
							value="${member.email}" />
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

			
			
				</div>
				&nbsp
				&nbsp
				&nbsp
				&nbsp
				<div class="col-sm-12">
					<input type="submit" class="btn btn-warning" value="Login" />
				</div>
			</div>
		</div>


	</div>
	</form>
</body>
</html>