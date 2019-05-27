

<!Doctype html>
<html>
<style>
body {
	background-image:
		
		url("images/gym.jpg"); 
	background-repeat: no-repeat;
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
		/* url(https://image.freepik.com/free-vector/dark-blue-blurred-background_1034-589.jpg); */
	/* "images/ropes.jfif";  */
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
	color: black;
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
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<div class="container">
		<!---heading---->
		<header class="heading"> Unsuccessful Login</header>
		
		&nbsp 
		<a href="/welcome"
			style="font-family: Roboto, sans-serif; color: black; font-size: 25px; font-weight: bold;">Please Go
			Back and Try Again</a>

	</div>
</body>
</html>