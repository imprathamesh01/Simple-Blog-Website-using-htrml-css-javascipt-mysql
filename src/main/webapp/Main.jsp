<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<script src="https://kit.fontawesome.com/a076d05399.js" ></script>

<meta charset="ISO-8859-1">
<title>Pratham Patil</title>
<style>
*{
padding:0;
margin:0;
box-sizing:border-box;
list-style:none;00
text-decoration:none;
}

body{
overflow-X:hidden;
}
nav{
height:80px;
align-items:center;
justify-content:space-between;
display:flex;
padding:0 50px 0 80px;
background:black;
}
nav ul{
display:flex;
}
.logo{
color:white;
font-size:30px;
font-weight:bold;
}
nav ul li{
margin:0 8px;
}
nav ul li a{
color:white;
font-size:18px;
letter-spacing:1px;
padding:8px 10px;
border-radius:3px;
transition:all 0.3s;

}
nav ul li  a:hover,
nav ul li  a.active{
background:#fff;
color:black;
}
header{
background-image:url("mclaren.jpg");
width:100%;
height:720px;
background-repeat:no-repeat;
background-size:100% 100%;
display:flex;
flex-direction:column;
align-items:center;
justify-content:center;

}

.content h1,p{
color:white;
margin:5px 0;
}
button{
color:black;
background:white;
padding:10px 20px;
text-transform:uppercase;
font-weight:bold;
border:none;
outline:none;
margin-top:10px;
}

#click{
display:none;
}


@media (max-width:668px){

nav .menu-btn i{
display:block;
color:white;
}
#click:checked ~.menu-btn i:before{
content:"\f00d";
}
		
	nav ul{
		position:fixed;
		left:-100%;
		top:80px;
		background:black;
		height:100vh;
		width:100%;
		display:block;
		text-align:center;
		transition:all 0.3s;

	}
	
	#click:checked ~ ul{
	left:0%;
}
	nav ul li{
	margin:40px 0;
	}
	nav ul li a{
	font-size:20px;
	display:block;
	color:cyan;
	
	}
	
	.content h1,p,button{
		margin-right:100px;
	
	}
		nav ul li  a:hover,
	nav ul li  a.active{
	background:none;
	color:cyan;
}
.content h1,p{
color:black;
margin:5px 0;
}
}
body{
overflow-Y:hidden;
}

</style>
</head>
<body>
<nav>
<h1 class="logo">P R A T H A M E S H</h1>
<input type="checkbox" id="click">
<label for="click"  class="menu-btn">
<i class="fas fa-bars"></i>
</label>
<ul>
<li><a href="#" class="active">Home</a></li>
<li><a href="Register.jsp" >Registration</a></li>
<li><a href="Login.jsp">Login</a></li>
</ul>
</nav>
<header>
<div class="content">
<h1>Professional Website</h1>
<p>Discover What's possible </p>
<button>Game on</button>
</div>
</header>


</body>
</html>