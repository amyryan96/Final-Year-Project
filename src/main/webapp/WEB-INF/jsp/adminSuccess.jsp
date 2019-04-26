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



/*---for heading-----*/
.heading {
	text-decoration: bold;
	text-align: center;
	font-size: 30px;
	color: black;
	font-weight: bold;
	padding-top: 10px;
}

.pass {
	color: white;
	margin-top: 9px;
	font-size: 14px;
	font-family: sans-serif;
	/* margin-left: 6px; */
	
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
<title>Successful Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>

<div role="navigation">
		<div class="navbar navbar-inverse">
		<a href="/welcome" class="navbar-brand">Admin Home Page</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<!-- <li><a href="/empschedule">View Stock Items</a></li> -->
					<!-- <li><a href="/admincart">Add Stock</a></li>
					 -->
					
				</ul>
			</div>
		</div>
		</div>
	<div class="container">
		<!---heading---->
		<header class="heading"> Welcome ${sessionScope.admin.name} to your homepage  </header>
		<hr></hr>
		
	<h1> Add Stock </h1>
		<form class="form-horizontal" method="POST" action="addItem">
		
		
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
						<label class="ate">Enter The Manufacturer </label>
					</div>
					<div class="col-xs-60">
					<input type="text" name="manufac" id="manufac"
							placeholder="Enter The Manufacturer" class="form-control"
							value="${cart.manufac}" />
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
			
			
		&nbsp
		<br>
		<div class="col-sm-12">
		
					<input type="submit" class="btn btn-warning" value="Add To Cart" />
				</div>
	</form> 
		<!-- <form class="form-horizontal" method="post" action="addItem">
		<input type="submit" class="btn btn-warning" value="Add Stock" name= "addItem" />
		
		</form>  -->
 
 </div>
	<form form class="form-horizontal" method="post" action="logoutMember">
				<input type="submit" class="btn btn-warning" value="Logout" name="logoutMember" />
				</form>
</body>
</html>
