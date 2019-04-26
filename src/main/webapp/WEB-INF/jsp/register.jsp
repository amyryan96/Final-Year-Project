
<!Doctype html>
<html>
<style>
body {
	
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

#name {
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
#username {
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
						<form class="form-horizontal" method="POST" action="addCustomer">
						
							<input type="hidden" name="Id" value="${customer.Id}"> 
								<div align = "left">
							<label class="firstname">Enter Name </label>
					</div>
					</div>
					<div class="col-xs-8">
						<input type="text" name="name" id="name"
							placeholder="Enter Your Name" class="form-control "
							value="${customer.name}" />
					</div>
				</div>
			</div>

			<div class="col-sm-12">
				<div class="row">
					<div class="col-xs-4" align = "left">
					
						<label class="mail">Enter Username </label>
					
					</div>
					<div class="col-xs-8">
					<input type="email" name="username" id="username"
							placeholder="Enter Your Username" class="form-control"
							value="${customer.username}" />
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
							value="${customer.password}" />
					</div>
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
