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
		url("images/light-grey-background.jpg");
		
	border-style: 1px solid grey;
	margin: 0 auto;
	text-align: center;
	opacity: 0.8;
	margin-top: 67px;
	box-shadow: 2px 5px 5px 0px #eee;
	max-width: 550px;
	padding-top: 10px;
	height: 425px;
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
	color: black;
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
<title>Food Diary</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<div role="navigation">
		<div class="navbar navbar-inverse">
		<a href="/welcome" class="navbar-brand">Your Cart</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					
					<li><a href="/shop">Go Shopping</a></li>
					
				</ul>
			</div>
		</div>
		</div>
	<div class="container">
		<!---heading---->
		<header class="heading"> Welcome To The Shop</header>
		<hr></hr>
		<form class="form-horizontal" method="post" action="addItem">
		<input type="hidden" name="Id" value="${cart.CartId}"> 
								
			<div class="col-sm-12">
				<div class="row">
					<div class="col-xs-10">
					<div align = "left">
							<label class="date">Enter Product Title </label>
					</div>
					<div class="col-xs-60">
						<input type="text" name="title" id="title"
							placeholder="Enter The Product Title" class="form-control "
							value="${cart.title}" />
					</div>
					</div>
				</div>
				</div>
			<div class="col-sm-12">
				<div class="row">
					<div class="col-xs-10">
					<div align = "left">
						<label class="day">Enter The Price </label>
					</div>
					<div class="col-xs-60">
					<input type="text" name="price" id="price"
							placeholder="Enter The Price of the Item" class="form-control"
							value="${cart.price}" />
					</div>
				</div>
			</div>
			</div>
			<div class="col-sm-12">
				<div class="row">
					<div class="col-xs-10">
					<div align = "left">
						<label class="ate">Enter The Category </label>
					</div>
					<div class="col-xs-60">
					<input type="text" name="category" id="category"
							placeholder="Enter The Category" class="form-control"
							value="${cart.category}" />
					</div>
				</div>
			</div>
			</div>
			
			<div class="col-sm-12">
				<div class="row">
					<div class="col-xs-10">
					<div align = "left">
						<label class="ate">Enter The Manufacturer </label>
					</div>
					<div class="col-xs-60">
					<input type="text" name="manufac" id="manufac"
							placeholder="Enter The Manufacturer" class="form-control"
							value="${cart.manufacturer}" />
					</div>
				</div>
			</div>
			</div>
		&nbsp
		<br>
		
	</form>
	&nbsp
	
		<form class="form-horizontal" method="post" action="addItem">
		<input type="submit" class="btn btn-warning" value="Add To Cart" name= "addItem" />
		
		</form>
	&nbsp
	<form form class="form-horizontal" method="post" action="logoutMember">
				<input type="submit" class="btn btn-warning" value="Logout" name="logoutMember" />
				</form>
</body>
</html>
