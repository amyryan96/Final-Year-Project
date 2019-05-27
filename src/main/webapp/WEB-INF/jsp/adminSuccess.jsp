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
.pass {
color: white;
margin-top: 9px;
font-size: 14px;
font-family: sans-serif;
/* margin-left: 6px; */

}
/*------------For submit button---------*/
/* .sbutton {
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
} */
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
<title>Successful Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>

<div role="navigation">
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Gym HomePage</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor03" aria-controls="navbarColor03" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarColor03">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="/addClass" style= "font-size: 10px">Create A Gym Class<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/foodDiary" style= "font-size: 10px">Log Your Food<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/empschedule" style= "font-size: 10px">View Your Work Schedule<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" method="post" action="logoutMember" style= "font-size: 10px">Logout<span class="sr-only">(current)</span></a>
      </li>
    </ul>
   
  </div>
</nav>
</div> 
<div class="container">
<!---heading---->
<header class="heading"> Welcome ${sessionScope.employee.name} to your homepage  </header>
<hr></hr>
<div align="center">
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src= "images/gym3.jpg" alt="Gym"  width="600" height="300">
      <div class="carousel-caption">
        <h3>Every</h3>
        <p>Workout</p>
        <p>Counts</p>
      </div>
    </div>

    <div class="item">
      <img src="images/gym4.jpg" alt="Gym">
      <h3>Decide</h3>
        <p>Commit</p>
        <p>Succeed </p>
    </div>

    <div class="item">
      <img src="images/gym5.jpg" alt="Gym">
      <h3>Train Insane</h3>
        <p>Or Remain The Same</p>
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

</div>


 </div>
 
 <!-- <div align="centre">
<a href="/createClass"
style="font-family: Roboto, sans-serif; color: black; font-size: 25px; font-weight: bold;">Create a Gym Class</a>
&nbsp &nbsp &nbsp &nbsp &nbsp 
<a href="/allMembers"
style="font-family: Roboto, sans-serif; color: black; font-size: 25px; font-weight: bold;">View All Members </a>
</div>

 -->
<!-- <form form class="form-horizontal" method="post" action="logoutMember">
<input type="submit" class="btn btn-warning" value="Logout" name="logoutMember" />
</form> -->
</body>
</html>
