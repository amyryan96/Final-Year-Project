
<!--  <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gym </title>
</head>
<body>
<h1>Welcome to gym login</h1>	
<a href="/register">Register</a>
<a href="/login">Login</a>
</body>
</html>-->


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
<title>Gym </title>
</head>
<body>
<div class="container">

	<div class="row" style="margin-top: 20px">
		<div
			class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
			<form role="form">
				<fieldset>
				<p style = "font-family:georgia,garamond,serif;font-size:40px;font-style:italic; color:black;">
				 &nbsp &nbsp &nbsp Welcome To Your Gym
				</p>
					<hr class="colorgraph">
					<div class="form-group">
					<div align="center">
					<a href="/register" style = "font-family:georgia,garamond,serif;font-size:40px;font-style:italic; color:black;">Register</a>
					&nbsp
					&nbsp
					&nbsp
					&nbsp
					&nbsp
					&nbsp
					<a href="/login" style = "font-family:georgia,garamond,serif;font-size:40px;font-style:italic; color:black;">Login</a>
					</div>
						</div>
					</div>
				</fieldset>
			</form>
		</div>
	</div>
	</body>


</html>-->





<!Doctype html>
<html>
<style>
body {
	background-image:
		/* url(https://s3.envato.com/files/243754334/primag.jpg); */
		url("images/gym.jpg"); 
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
		url(https://image.freepik.com/free-vector/dark-blue-blurred-background_1034-589.jpg);
	/* "images/ropes.jfif";  */
	border-style: 1px solid grey;
	margin: 0 auto;
	text-align: center;
	opacity: 0.8;
	margin-top: 67px;
	box-shadow: 2px 5px 5px 0px #eee;
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
		<header class="heading"> Welcome  To Your Gym </header>
		<hr></hr>




		<form class="form-horizontal" method="post" action="loginMember">

			<div align="centre">
				<a href="/register"
					style="font-family: Roboto, sans-serif; color: white; font-size: 25px; font-weight: bold;">Register</a>
				&nbsp &nbsp &nbsp &nbsp &nbsp <a href="/login"
					style="font-family: Roboto, sans-serif; color: white; font-size: 25px; font-weight: bold;">Login</a>
			</div>
		</form>

	</div>
</body>
</html>