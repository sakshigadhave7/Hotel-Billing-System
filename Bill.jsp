<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>  
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Hotel Billing System</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
  	table{
  		border-width:2px;
  		border-style:solid;
  		width:100%;
  	}
  	td{
  		text-align:center;
  	}
  	.btn{
  		items-align: center;
  	}
  </style>
</head>
<body style="background-color:#FFEBCD;">

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Hotel Billing System</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Welcome</a></li>
    </ul>
  </div>
</nav>


<%
String driver = "org.mariadb.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "users";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<h1 align="center">Choose Your Meal</h1>
<table border="2" width="100%" text-align="center">  
<tr>
<td>Sr. No.</td>
<td>Item Name</td>
<td>Item Price</td>


</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from foodItems";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getInt("id") %></td>
<td><%=resultSet.getString("item_name") %></td>
<td><%=resultSet.getInt("item_price") %></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<%
int qty1=0,qty2=0,qty3=0,qty4=0,qty5=0,qty6=0,qty7=0,qty8=0,qty9=0,qty10=0,qty11=0,qty12=0,qty13=0,qty14=0,qty15=0;
int price1 = 80,price2 = 50,price3 = 120,price4 = 220,price5 = 250,price6 = 210,price7 = 140,price8 = 125,price9 = 55,price10 = 70,price11 = 180,price12 = 260,price13 = 100,price14 = 160,price15 = 60; // Which I am deriving from Servlet Context
%>
  

<form method="post" action="receipt.jsp" >
Enter your name :<input type="text" name="name" />
Select Items:<br>
<input type="text" name="n1" value="Pav Bhaji">   Quantity <input type="text" name="q1" value='<%=qty1%>'> Price <input type="text" name="p1" value=<%=price1%>><br>
<input type="text" name="n2" value="Bread Crums">Quantity <input type="text" name="q2" value='<%=qty2%>'> Price <input type="text" name="p2" value=<%=price2%>><br>
<input type="text" name="n3" value="Grilled Sandwich">Quantity <input type="text" name="q3"value='<%=qty3%>'> Price <input type="text" name="p3" value=<%=price3%>><br>
<input type="text" name="n4" value="Paneer Makhani Biryani">Quantity <input type="text" name="q4" value='<%=qty4%>'> Price <input type="text" name="p4" value=<%=price4%>><br>
<input type="text" name="n5" value="Mushroom masala">Quantity <input type="text" name="q5" value='<%=qty5%>'> Price <input type="text" name="p5" value=<%=price5%>><br>
<input type="text"  name="n6" value="Malai Kofta">Quantity <input type="text" name="q6" value='<%=qty6%>'> Price <input type="text" name="p6" value=<%=price6%>><br>
<input type="text"  name="n7" value="Rajma ">Quantity <input type="text" name="q7" value='<%=qty7%>'> Price <input type="text"  name="p7" value=<%=price7%>><br>
<input type="text"  name="n8" value="Masala Dosa">Quantity <input type="text" name="q8" value='<%=qty8%>'> Price <input type="text" name="p8" value=<%=price8%>><br>
<input type="text"  name="n9" value="Rice Idli">Quantity <input type="text" name="q9" value='<%=qty9%>'> Price <input type="text" name="p9" value=<%=price9%>><br>
<input type="text"  name="n10" value="Veg Burger">Quantity <input type="text" name="q10" value='<%=qty10%>'> Price <input type="text" name="p10" value=<%=price10%>><br>
<input type="text"  name="n11" value="white sauce pasta">Quantity <input type="text" name="q11" value='<%=qty11%>'> Price <input type="text" name="p11" value=<%=price11%>><br>
<input type="text"  name="n12" value="Cheese pizza">Quantity <input type="text"name="q12" value='<%=qty12%>'> Price <input type="text" name="p12" value=<%=price12%>><br>
<input type="text"  name="n13"value="French Fries">Quantity <input type="text" name="q13" value='<%=qty13%>'> Price <input type="text" name="p13" value=<%=price13%>><br>
<input type="text"  name="n14"value="Veg Pulao">Quantity <input type="text" name="q14" value='<%=qty14%>'> Price <input type="text" name="p14"value=<%=price14%>><br>
<input type="text"  name="n15"value="GulabJamun">Quantity <input type="text" name="q15" value='<%=qty15%>'> Price <input type="text" name="p15"value=<%=price15%>><br>

<div style="text-align: center; padding:20px;">
        <Input type = 'Submit' Name ='Submit' value="Next"  align="center" padding="20px">
</div>
</form>
</body>
</html>