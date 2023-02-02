<!DOCTYPE html>
<!-- Created By CodingNepal - www.codingnepalweb.com -->
<html lang="en" dir="ltr">
  <head>
          <meta charset="UTF-8">
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <!-- bootstrap 3.0.2 -->
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- Theme style -->
        <link href="css/AdminLTE.css" rel="stylesheet" type="text/css" />
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
  </style>
  <body>
    <nav>
      <input type="checkbox" id="check">
      <label for="check" class="checkbtn">
        <i class="fas fa-bars"></i>
      </label>
      <label class="logo"><img src="img/updated_logo.png" style="width:10%;margin-right:3%;">Katarungan Village</label>
      <ul>
        <li><a href="homefinal.php">Home</a></li>
        <li><a class="active" href="loginas.php">Login</a></li>
      </ul>
    </nav>
   <div class="skin-black">
        <div class="container" style="margin-top:30px">
          <div class="col-md-4 col-md-offset-4">
              <div class="panel panel-default">
            <div class="panel-heading" style="text-align:center;">
                <img src="img/updated_logo.png" style="height:150px;"/>
              <h3 class="panel-title"><br>
                <strong>
                    Login As:
                </strong>
              </h3><br>
            </div>
            <div class="panel-body">
				<a href="pages/resident/login.php">
					<input type="button" value="Resident" class="btn btn-sm btn-primary" />
				</a><br><br>
				<a href="login.php" >
					<input type="button" value="Admin" class="btn btn-sm btn-primary" />
				</a><br><br>
				<a href="pages/zone/login.php" >
					<input type="button" value="Zone Leader" class="btn btn-sm btn-primary" />
				</a>
          </div>
          </div>
        </div>
		</div>
  </body>
</html>