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
url("images/light-grey-background.jpg");

/* border-style: 1px solid grey; */
margin: 0 auto; 
text-align: center;
/* opacity: 0.8; */
margin-top: 90px; 
/* box-shadow: 2px 5px 5px 0px #eee; */
max-width: 650px;
padding-top: 15px; 
height: 500px;
/* margin-top: 166px; */
}
#day {
margin-top: 5px;
}
.day{

font-family: sans-serif;
color: black;
font-size: 14px;
margin-top: 13px;

}
.date {
margin-left: 1px;
font-family: sans-serif;
font-size: 14px;
color: black;
margin-top: 5px;
text-align: left;
}

#date {
margin-top: 5px;
}

#ate {
margin-top: 5px;
}

.ate{
/* margin-left: 44px; */
font-family: sans-serif;
color: black;
font-size: 14px;
margin-top: 13px;
}
.button {
  display: inline-block;
  border-radius: 4px;
  background-color: #211616;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 15px;
  padding: 20px;
  width: 90px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
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
<title>Food Diary</title>
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
        <a class="nav-link" href="/bookClass" style= "font-size: 10px">Book A Gym Class<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/foodDiary" style= "font-size: 10px">Log Your Food<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/payment" style= "font-size: 10px">Membership Renewal<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/viewFoodLogs" style= "font-size: 10px">View Previous Food Logs<span class="sr-only">(current)</span></a>
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
<header class="heading"> Welcome To Your Food Diary Log System </header>
<hr></hr>
<form class="form-horizontal" method="post" action="addFood">
<input type="hidden" name="Id" value="${foodDiary.diaryId}"> 

<div class="col-sm-12">
<div class="row">
<div class="col-xs-10">
<div align = "left">
<label class="date">Enter Date </label>
</div>
<div class="col-xs-60">
<input type="date" name="date" id="date"
placeholder="Enter The Date" class="form-control "
value="${foodDairy.date}" />
</div>
</div>
</div>
</div>
<div class="col-sm-12">
<div class="row">
<div class="col-xs-10">
<div align = "left">
<label class="day">Enter The Day Of The Week </label>
</div>
<div class="col-xs-60">
<input type="text" name="dayofweek" id="dayofweek"
placeholder="Enter The Day Of The Week" class="form-control"
value="${foodDiary.dayOfWeek}" />
</div>
</div>
</div>
</div>
<div class="col-sm-12">
<div class="row">
<div class="col-xs-10">
<div align = "left">
<label class="ate">Enter The Food You Ate </label>
</div>
<div class="col-xs-60">
<input type="text" name="foodType" id="foodType"
placeholder="Enter The Food You Ate" class="form-control"
value="${foodDiary.foodType}" />
</div>
</div>
</div>
</div>
<div class="col-sm-12">
<div class="row">
<div class="col-xs-10">
<div align = "left">
<label class="ate">Enter The Amount of Calories </label>
</div>
<div class="col-xs-60">
<input type="text" name="calories" id="calories"
placeholder="Enter The Amount of Calories" class="form-control"
value="${foodDiary.calories}" />
</div>
</div>
</div>
</div>
&nbsp
<br>
<div class="col-sm-12">
<input type="submit" class= "button" style="vertical-align:middle" value="Input" name="input"/><span></span>
</div>
</form>


</body>
</html>
