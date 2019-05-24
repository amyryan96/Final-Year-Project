<!Doctype html>
<html>
<style>
body {
	background-image:
		/* url(https://s3.envato.com/files/243754334/primag.jpg); */
		url("images/gym3.jpg"); 
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
	/* url("images/plain-black-backgorund.jpg"); */
		/* url(https://image.freepik.com/free-vector/dark-blue-blurred-background_1034-589.jpg); */
	
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
<title>Welcome</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<div role="navigation">
		<div class="navbar navbar-inverse">
	<!-- 	<a href="/welcome" class="navbar-brand">Gym HomePage</a> -->
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="/bookClass">Book a Gym Class</a></li>
					<li><a href="/foodDiary">Log Your Food for the day</a></li>
					<li><a href="/payment">Membership Renewal</a></li>
				</ul>
			</div>
		</div>
		</div>
	<div class="container">
		<!---heading---->
		<header class="heading"> Welcome ${sessionScope.member.name} To Your Membership Renewal </header>
		<hr></hr>


		<form action="/purchase" method="POST">
		
		<br/><h3 style="font-family: Roboto, sans-serif; color: white; font-weight: bold;">Choose Membership type <br/></h3>
			<input type="radio" name="memberType1" value="adult"> <span>Adult Membership</span><br>
			<input type="radio" name="memberType2" value="student"> <span>Student Membership</span><br> 
			<input type="radio" name="memberType3" value="child"><span>Under 18's</span>

			<h3 style="font-family: Roboto, sans-serif; color: white; font-weight: bold;">
			Choose the membership length</h3>
		<input type="radio" name="memlength1" value="month"><span>One Month</span><br>
		<input type="radio" name="memlength2" value="three"><span> Three Months</span><br> 
		<input type="radio" name="memlength3" value="year"><span>One Year</span><br>
		<br/>
			<script src="https://checkout.stripe.com/checkout.js"
				class="stripe-button" data-key="pk_test_ARH638kxPC6MUhAmjSYMQf19008FMKa5w5"
				data-amount=data-name= "your site name"
				data-description="Membership Renewal"
				data-image="images/gym.jpg"
				data-locale="auto" data-currency="eur">
			</script>
		
		</form>
		
		
	</div>
</body>
</html>