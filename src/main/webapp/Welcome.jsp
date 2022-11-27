<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Pratham Patil</title>
<style>
*{
padding:0;
margin:0;
box-sizing:border-box;
list-style:none;
text-decoration:none;
}
#btn{
color:white;
background:black;
padding:6px 10px;
text-decoration:none;
font-size:18px;
}
.btn{
color:black;
padding:6px 8px;
text-decoration:none;
font-size:18px;

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

font-size:18px;
letter-spacing:1px;
padding:8px 10px;
border-radius:3px;


}

header{
background-image:url("purple.jpg");
width:100%;
height:530px;
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
		
}
.content h1,p{
color:black;
margin:5px 0;
}
}



</style>
</head>
<body>
<form>
<div class="Welcome">
<div class="welcomepage">
<nav>
<h1 class="logo">P R A T H A M</h1>
<input type="checkbox" id="click">
<label for="click"  class="menu-btn">
<i class="fas fa-bars"></i>
</label>
<ul>
<li><a href="#" class="active"><input type="submit" value="Logout" name="logout" id="btn1" class="btn"></a></li>

</ul>
</nav>
<header>
<div class="content">
<h1>  Your feedback matters</h1>
<p>Feel free to suggest us more where we can improve to deliver our best</p>

</div>
</header>
</div>

</div>



</form>
<h1><% String rname=(String)session.getAttribute("ename");%></h1>
<h1 style=color:aqua>Name:<%=rname%></h1>
<% 
if(request.getParameter("logout") !=null ){
session.invalidate();
response.sendRedirect("Login.jsp");
}

else if(rname==null){
	
	response.sendRedirect("Login.jsp");	
}


%>

<form method="post" action="Comment">

<table>
<tr><td style=color:red;font-size:30px;>Comment:</td>
<td><textarea name="comment" id="comment" rows="4" cols="20"></textarea></td>
</tr>
<tr><td><input type="submit" name="com" value="Comment" id="btn"></td></tr>
</table>
</form>


<%

if(rname!=null){

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/pratham","root","12345");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select *from comments");
out.print("<table border='1'><tr><th>Eid</th><th>Ename</th><th>Comment</th><tr>");
while(rs.next()){
	out.print("<td>"+rs.getInt("cid")+"</td>");
	out.print("<td>"+rs.getString("cname")+"</td>");
	out.print("<td>"+rs.getString("comment")+"</td>");

	out.print("</tr>");
}
out.print("</table>");	
}
%>

</body>
</html>