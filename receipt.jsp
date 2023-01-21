<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hotel Billing System</title>
<style>
	table,tr,td{
		border:1px solid black;
		text-align:center;
	}
</style>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 
</head>
<body style="background-color:#FFEBCD;">

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Hotel Billing System</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="Index.jsp">Welcome</a></li>
    </ul>
  </div>
</nav>
<body>
	
	
  <table style="width:100%">
  <tr>
    <th><h3>Name</h3></th>
    <th><h3><%= request.getParameter("name")%></h3></th>
    <th></th>
  </tr>
  
  <tr>
    <th>Item Name</th>
    <th>Quantity</th>
    <th>Price</th>
  </tr>
  <tr>
    <td>(<%= request.getParameter("n1")%> </td>
    <td><%= request.getParameter("q1")%> </td>
    <td><%= request.getParameter("p1")%> </td>
  </tr>
  <tr>
    <td><%= request.getParameter("n2")%> </td>
    <td><%= request.getParameter("q2")%> </td>
    <td><%= request.getParameter("p2")%> </td>
  </tr>
  <tr>
    <td><%= request.getParameter("n3")%> </td>
    <td><%= request.getParameter("q3")%> </td>
    <td><%= request.getParameter("p3")%> </td>
  </tr>
  <tr>
    <td><%= request.getParameter("n4")%> </td>
    <td><%= request.getParameter("q4")%> </td>
    <td><%= request.getParameter("p4")%> </td>
  </tr>
  <tr>
    <td><%= request.getParameter("n5")%> </td>
    <td><%= request.getParameter("q5")%> </td>
    <td><%= request.getParameter("p5")%> </td>
  </tr>
  <tr>
    <td><%= request.getParameter("n6")%> </td>
    <td><%= request.getParameter("q6")%> </td>
    <td><%= request.getParameter("p6")%> </td>
  </tr>
  <tr>
    <td><%= request.getParameter("n7")%> </td>
    <td><%= request.getParameter("q7")%> </td>
    <td><%= request.getParameter("p7")%> </td>
  </tr> 
  <tr>
    <td><%= request.getParameter("n8")%> </td>
    <td><%= request.getParameter("q8")%> </td>
    <td><%= request.getParameter("p8")%> </td>
  </tr>
  <tr>
    <td><%= request.getParameter("n9")%> </td>
    <td><%= request.getParameter("q9")%> </td>
    <td><%= request.getParameter("p9")%> </td>
  </tr>
  <tr>
    <td><%= request.getParameter("n10")%> </td>
    <td><%= request.getParameter("q10")%> </td>
    <td><%= request.getParameter("p10")%> </td>
  </tr>
  <tr>
    <td><%= request.getParameter("n11")%> </td>
    <td><%= request.getParameter("q11")%> </td>
    <td><%= request.getParameter("p11")%> </td>
  </tr>
  <tr>
    <td><%= request.getParameter("n12")%> </td>
    <td><%= request.getParameter("q12")%> </td>
    <td><%= request.getParameter("p12")%> </td>
  </tr>
  <tr>
    <td><%= request.getParameter("n13")%> </td>
    <td><%= request.getParameter("q13")%> </td>
    <td><%= request.getParameter("p13")%> </td>
  </tr>
  <tr>
    <td><%= request.getParameter("n14")%> </td>
    <td><%= request.getParameter("q14")%> </td>
    <td><%= request.getParameter("p14")%> </td>
  </tr
  <tr>
    <td><%= request.getParameter("n15")%> </td>
    <td><%= request.getParameter("q15")%> </td>
    <td><%= request.getParameter("p15")%> </td>
  </tr>
  
 <%
 	int i1 = Integer.parseInt(request.getParameter("q1"));
 	int j1 = Integer.parseInt(request.getParameter("p1"));
 	
 	int i2 = Integer.parseInt(request.getParameter("q2"));
 	int j2 = Integer.parseInt(request.getParameter("p2"));
 	
 	int i3 = Integer.parseInt(request.getParameter("q3"));
 	int j3 = Integer.parseInt(request.getParameter("p3"));
 	
 	int i4 = Integer.parseInt(request.getParameter("q4"));
 	int j4 = Integer.parseInt(request.getParameter("p4"));
 	
 	int i5 = Integer.parseInt(request.getParameter("q5"));
 	int j5 = Integer.parseInt(request.getParameter("p5"));
 	
 	int i6 = Integer.parseInt(request.getParameter("q6"));
 	int j6 = Integer.parseInt(request.getParameter("p6"));
 	
 	int i7 = Integer.parseInt(request.getParameter("q7"));
 	int j7 = Integer.parseInt(request.getParameter("p7"));
 	
 	int i8 = Integer.parseInt(request.getParameter("q8"));
 	int j8 = Integer.parseInt(request.getParameter("p8"));
 	
 	int i9 = Integer.parseInt(request.getParameter("q9"));
 	int j9 = Integer.parseInt(request.getParameter("p9"));
 	
 	int i10 = Integer.parseInt(request.getParameter("q10"));
 	int j10 = Integer.parseInt(request.getParameter("p10"));
 	
 	int i11 = Integer.parseInt(request.getParameter("q11"));
 	int j11 = Integer.parseInt(request.getParameter("p11"));
 	
 	int i12 = Integer.parseInt(request.getParameter("q12"));
 	int j12 = Integer.parseInt(request.getParameter("p12"));
 	
 	int i13 = Integer.parseInt(request.getParameter("q13"));
 	int j13 = Integer.parseInt(request.getParameter("p13"));
 	
 	int i14 = Integer.parseInt(request.getParameter("q14"));
 	int j14 = Integer.parseInt(request.getParameter("p14"));
 	
 	int i15 = Integer.parseInt(request.getParameter("q15"));
 	int j15 = Integer.parseInt(request.getParameter("p15"));
            
    int k=i1*j1+i2*j2+i4*j4+i5*j5+i6*j6+i7*j7+i8*j8+i9*j9+i10*j10+i11*j11+i12*j12+i13*j13+i14*j14+i15*j15;
           
/*String name=request.getParameter("name");

try
{
Class.forName("org.mariadb.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/users", "root", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into customer(name,k)values('"+name+"','k')");
out.println("Thank you for Visiting ! ");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}8*/
%>
<tr>
    <td><b> <h3>Total :</h3></b></td>
    <td> <b> <h3>-</h3></b> </td>
    <td><b> <h3><%=k%></h3></b></td>
  </tr>
  
</table>
</body>
</html>