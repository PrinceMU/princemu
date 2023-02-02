<!DOCTYPE html>
<!-- Created By CodingNepal - www.codingnepalweb.com -->
<html lang="en" dir="ltr">
  <head>
          <meta charset="UTF-8">
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <!-- bootstrap 3.0.2 -->
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- Theme style -->
        <link href="../css/AdminLTE.css" rel="stylesheet" type="text/css" />
    <meta charset="utf-8">
    <title>Login Option Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
  </head>
  <style>
  *{
  padding: 0;
  margin: 0;
  text-decoration: none;
  list-style: none;
  box-sizing: border-box;
}
body{
  font-family: montserrat;
}
nav{
  background: #1A1B70;
  height: 50px;
  width: 100%;
}
label.logo{
  color: white;
  font-size: 30px;
  line-height: 50px;
  padding: 0 40px;
  font-weight: bold;
}
nav ul{
  float: right;
  margin-right: 20px;
}
nav ul li{
  display: inline-block;
  line-height: 50px;
  margin: 0 5px;
}
nav ul li a{
  color: white;
  font-size: 13px;
  padding: 7px 13px;
  border-radius: 3px;
  text-transform: uppercase;
}
a.active,a:hover{
  background: #1b9bff;
  transition: .5s;
}
.checkbtn{
  font-size: 30px;
  color: white;
  float: right;
  line-height: 80px;
  margin-right: 40px;
  cursor: pointer;
  display: none;
}
#check{
  display: none;
}
@media (max-width: 952px){
  label.logo{
    font-size: 30px;
    padding-left: 50px;
  }
  nav ul li a{
    font-size: 16px;
  }
}
@media (max-width: 858px){
  .checkbtn{
    display: block;
  }
  ul{
    position: fixed;
    width: 100%;
    height: 100vh;
    background: #2c3e50;
    top: 80px;
    left: -100%;
    text-align: center;
    transition: all .5s;
  }
  nav ul li{
    display: block;
    margin: 50px 0;
    line-height: 30px;
  }
  nav ul li a{
    font-size: 20px;
  }
  a:hover,a.active{
    background: none;
    color: #3CA7F1;
  }
  #check:checked ~ ul{
    left: 0;
  }
}
#bannerimage {
  width: 100%;
  background-image: url(../img/katarungan1.1.png);
  height: 230px;
  background-position: center;
  background-repeat: repeat-y;
}

/**********************************/
/* Styling Main content Section 1 */
/**********************************/
#welcome
{ overflow: hidden;
	width: 1000px;
	margin: 0px auto;
}
		
#welcome .title{
	margin-top: 20px;
	padding: 20px;
	text-align: center;
}

#welcome p{
	margin-bottom: 40px;
	text-align: center;
}

#section-2{
	overflow: hidden;
	margin-top: 5em;
	padding-top: 1em;
	border-top: 1px solid rgba(0, 0, 0, 0.2);
	text-align: center;
}
.row #column1,
.row #column2,
.row #column3{
		float: left;
		width: 320px;
		margin-right: 5em;
		padding: 80px 40px 80px 40px;
}
.column-title h2{
	margin: 1em 0em;
	font-size: 1.6em;
	font-weight: 700;
}

.button {
	text-decoration: none;
	text-align: center;
	display: inline-block;
	font-size: 16px;
	background-color: #4CAF50;
	color: white;
	border: 2px solid #4CAF50;
	padding: 16px 32px;
	margin: 4px 2px;
	-webkit-transition-duration: 0.4s; /* Safari */
	transition-duration: 0.4s;
	cursor: pointer;
}
	
.button:hover {
	background-color: white;
	color: #4CAF50;
}

/*****************************************/
/*	 Styling Main Content Section 3 */
/*****************************************/

#section-3{
	overflow: hidden;
	padding-top: 5em;
	border-top: 1px solid rgba(0, 0, 0, 0.2);
	text-align: center;
	
}

.image
{
	display: inline-block;
	border: 1px solid rgba(0, 0, 0, .5);
	border-radius: 5px;
}
	
.image img
{
	display: block;
	width: 100%;
}
	
.image-full
{
	display: block;
	width: 100%;
	margin: 0 0 3em 0;
}
	
.img-title{
	display: block;
	padding-bottom: 1em;
	font-size: 1em;
	color: rgba(0, 0, 0, 0.6);
}

/* Add fixed width for each column and
align text to center */
#column21,
#column22,
#column23
{
	width: 282px;
	text-align: center;
	margin-right: 5px;
}
	
#column21,
#column22,
#column23{
	width: 282px;
	text-align: center;
}

#column21,
#column22,
#column23{
	float: left;
	margin: 0px 45px;
}


@import url(https://fonts.googleapis.com/css?family=Alegreya+Sans:300);

body {
    font-family: 'Alegreya Sans', sans-serif;
}

/* Sticky footer position and size
-------------------------------------------------- */
html {
  position: relative;
  min-height: 100%;
}
body {
	    min-height: 100vh;
    display: flex;
    flex-direction: column;
  /* Margin bottom by footer height */
  margin-bottom: 300px;
}
.footer {
  position: absolute;
  bottom: 0;
  width: 100%;
  /* Set the fixed height of the footer here */
  height: 300px;
}

/* Taller footer on small screens */
@media (max-width: 567em) {
    body {
      margin-bottom: 700px;
    }
    .footer {
      height: 700px;
    }
}

/* Sticky footer style and color
-------------------------------------------------- */
footer {
	margin-top:auto;
  padding-top: 30px;
  background-color: #292c2f;
  color: #bbb;
}

footer a {
  color: #999;
  text-decoration:none;
}

footer a:hover, footer a:focus {
  color: #aaa;
  text-decoration:none;
  border-bottom:1px dotted #999;
}

footer .form-control {
    background-color: #1f2022;
    box-shadow: 0 1px 0 0 rgba(255, 255, 255, 0.1);
    border: none;
    resize: none;
    color: #d1d2d2;
    padding: 0.7em 1em;
}

/* Button used to open the contact form - fixed at the bottom of the page */
.open-button {
  background-color: #555;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  opacity: 0.8;
  position: fixed;
  bottom: 23px;
  right: 28px;
  width: 280px;
}

/* The popup form - hidden by default */
.form-popup {
  display: none;
  position: fixed;
  top: 5%;
  right: 15px;
  border: 3px solid #f1f1f1;
  z-index: 9;
}

/* Add styles to the form container */
.form-container {
  max-width: 300px;
  padding: 10px;
  background-color: white;
}

/* Full-width input fields */
.form-container input[type=text], .form-container input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
}

/* When the inputs get focus, do something */
.form-container input[type=text]:focus, .form-container input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit/login button */
.form-container .btn {
  background-color: #04AA6D;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  margin-bottom:10px;
  opacity: 0.8;
}

/* Add a red background color to the cancel button */
.form-container .cancel {
  background-color: red;
}

/* Add some hover effects to buttons */
.form-container .btn:hover, .open-button:hover {
  opacity: 1;
}

  </style>
  <body>
    <nav>
      <input type="checkbox" id="check">
      <label for="check" class="checkbtn">
        <i class="fas fa-bars"></i>
      </label>
      <label class="logo"><img src="../img/updated_logo.png" style="width:10%;margin-right:3%;">Katarungan Village</label>
      <ul>
        <li><a class="active" href="index.php">Home</a></li>
		<li><a onclick="openForm()">Login</a></li>
      </ul>
    </nav>
	<div id="bannerimage"></div>

<div class="form-popup" id="myForm">
  <form action="/action_page.php" class="form-container">
	<img style="display:block;margin-left:auto;margin-right:auto;"src="../img/updated_logo.png"/>
    <h1 style="text-align:center">Login As:</h1>
	
	<button type="button" onclick="location.href = '../pages/resident/login.php';" class="btn">Resident</button>
	<button type="button" onclick="location.href = '../login.php';" class="btn">Admin</button>
	<button type="button" onclick="location.href = '../pages/zone/login.php';" class="btn">Zone Leader</button>
    <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
  </form>
</div>

<script>
function openForm() {
  document.getElementById("myForm").style.display = "block";
}

function closeForm() {
  document.getElementById("myForm").style.display = "none";
}
</script>
	<!-- Main content between Header and Footer -->
<main>
	<!-- Section 1 of Main content -->
	<section>
		<div id="welcome">
			<h1 class="title">Welcome to Katarungan Village</h1>
										
			

<p>
				Welcome to the official website of <strong>Katarungan</strong>, a vibrant 
and tight-knit community nestled in the heart of <strong>Poblacion, Muntinlupa</strong>. 
Our village boasts a rich history, stunning natural beauty, 
and a tight-knit community that comes together to create a warm and 
welcoming atmosphere. Whether you're a resident, a visitor, 
or just looking for information, this website is the 
perfect place to start exploring all that <strong>Katarungan</strong> has to offer. 
Browse through our pages to learn more about our community, events, and 
local businesses, and don't hesitate to reach out if you have any questions. 
We're always happy to help!
			</p>


		</div>		
	</section>

<!-- Section 3 of Main content -->
<section class="container" id="section-3">
	<div id="row">
				
		<!-- Column 1 -->
		<div id="column21">
			<img src="../img/whoarethey.jpg" class="image image-full">
						
			<div class="img-title">
				<h3>Katarungan Tour</h3>
			</div>
						
			
<p>
				Welcome to the <strong>Katarungan Tour</strong>, 
a unique and immersive experience that takes you on a 
journey through the rich history, culture, and traditions 
of our tight-knit community.
			</p>


						
			<a href="https://www.facebook.com/groups/159020940798315"
				target="_blank" class="button">
					Learn More
			</a>
		</div>
					
		<!-- Column 2 -->
		<div id="column22">
			
			<img src="../img/2222.jpg" class="image image-full">
						
			<div class="img-title">
				<h3>Katarungan Events</h3>
			</div>
						
			
<p>
				Welcome to the <strong>Katarungan Events</strong>, 
				where tradition and community come together in a celebration of our rich cultural heritage. 
				From festivals and fairs, to live music and performances, our events are designed to showcase 
				the best of what our village has to offer. 
			</p>


						
			<a href="https://www.doj.gov.ph/katarungan-village-housing-project.html"
				target="_blank" class="button">
					Learn More
			</a>
		</div>
					
		<!-- Column 3 -->
		<div id="column23">
		
			<img src="../img/theyareworking.jpg" class="image image-full">
						
			<div class="img-title">
				<h3>Katarungan Business</h3>
			</div>
						
			
<p>
				Welcome to <strong>Katarungan Business</strong>, where tradition meets innovation. 
				Our community is proud of its rich history and cultural heritage, and we're 
				always looking for new ways to preserve and celebrate it. 
			</p>


						
			<a href="https://www.facebook.com/groups/159020940798315"
				target="_blank" class="button">
					Learn More
			</a>
		</div>
	</div>
</section>

<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <h5><i class="fa fa-road"></i>   KATARUNGAN VILLAGE</h5>
                <div class="row">
                    <div class="col-6">
                        <ul class="list-unstyled">
                            <li><a href="">Description</a></li>
							<li><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum a nibh vehicula, auctor velit non, fringilla nunc. <p></li>
                            <li><a href="">Additional</a></li>
							<li><p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, 
							per inceptos himenaeos. Curabitur venenatis urna sed maximus pretium. Proin semper nisi vitae ornare rhoncus.<p></li>
                            <li><a href="">Partners</a></li>
							<li><p>Proin vestibulum leo posuere ligula 
							pretium elementum. Vivamus posuere nisl erat, a fermentum orci posuere vitae.<p></li>
                            <li><a href="">Team</a></li>
							<li><p>Harold Kobe S. Billo, John Michael P. Dignadice, Philip T. Domondon, Carlos Bernabe<p></li>
                        </ul>
                    </div>
                    <div class="col-6">
                        <ul class="list-unstyled">
                            <li><a href="">Documentation</a></li>
							<li><p>Ut placerat nunc bibendum, gravida mi eu, pulvinar nulla. Duis non magna eget odio ultrices hendrerit quis in nisi. <p></li> 
                            <li><a href="">Support</a></li>
							<li><p>Proin eget dignissim lacus, non sodales leo. Cras vel magna risus. Praesent fringilla erat diam, ac tincidunt quam maximus et.  <p></li>
                            <li><a href="">Legal Terms</a></li>
							<li><p>Proin eget dignissim lacus, non sodales leo. Cras vel magna risus. Praesent fringilla erat diam, ac tincidunt quam maximus et.<p></li>
                            <li><a href="">About</a></li>
							<li><p>Integer vitae iaculis purus. 
							Pellentesque sit amet leo sed neque aliquam facilisis in nec nulla. Duis egestas magna vitae ultrices luctus.<p></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-2">
                <h5 class="text-md-right">Contact Us:</h5>
				 <h5 class="text-md-right">091231231231</h5>
				 <h5 class="text-md-right">fakeemail@mail.com</h5>
            </div>
            <div class="col-md-5">
                <form>
                    <fieldset class="form-group">
                        <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
                    </fieldset>
                    <fieldset class="form-group">
                        <textarea class="form-control" id="exampleMessage" placeholder="Message"></textarea>
                    </fieldset>
                    <fieldset class="form-group text-xs-right">
                        <button type="button" class="btn btn-secondary-outline btn-lg">Send</button>
                    </fieldset>
                </form>
            </div>
        </div>
    </div>
</footer>



  </body>
</html>