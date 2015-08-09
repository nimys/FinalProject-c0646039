<%-- 
    Document   : alllist
    Created on : 8-Aug-2015, 7:46:17 PM
    Author     : c0646039
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Database.dataBase"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
   
<head>
	<meta charset="utf-8" />
	<title></title>
	<link rel="stylesheet" href="styles/main.css">
	
	<script type="text/javascript">

var slideimages = new Array() // create new array to preload images
slideimages[0] = new Image() // create new instance of image object
slideimages[0].src = "images/GRANCE.jpg" // set image src property to image path, preloading image in the process
slideimages[1] = new Image()
slideimages[1].src = "images/nw.jpg"
slideimages[2] = new Image()
slideimages[2].src = "images/wool.jpg"
slideimages[3] = new Image()
slideimages[3].src = "images/wool.jpg"
slideimages[4] = new Image()
slideimages[4].src = "images/nw2.jpg"
slideimages[5] = new Image()
slideimages[5].src = "images/nw3.jpg"
</script>

</head>

<body>
	<header>
		<img src="images/Untitled.png">
<h1>SARNIA LIBRARY</h1>
	
		<nav>
			<ul>
				<li><a class="current" href="index.jsp">Home</a></li>
				<li><a  href="books.jsp">Books</a></li>
				<li><a  href="CopyRight.jsp">Copy Right </a></li>
				<li><a  href="AskUs.jsp" id="email">Ask Us</a></li>
			</ul>
		</nav>		
	</header>
	<section>
            <style>
                table {
    border-collapse: collapse;
}

table, th, td {
    border: 1px solid black;
    padding:.5em;
}

            </style>
		
		<h1>WELCOME TO SARNIA LIBRARY!!</h1>
	<ul>		 
<h2>List of books Have been Order</h2>
 <%
            dataBase d=new dataBase();
            ResultSet r=d.getValues();
            out.println("<table>");
            out.println("<tr><th>Name of Buyer</th><th>Book Name</th><th>EmailID</th><th>Mobile NO</th><th>Address</th><th>Date</th></tr>");
            while(r.next()){
                
                out.println("<tr><td>"+r.getString("name")+"<td>"+r.getString("bookname")+"<td>"+r.getString("emailid")+"<td>"+r.getString("mobile")+"<td>"+r.getString("address")+"<td>"+r.getString("d")+"</td></tr>");
            }
            out.println("</table>");
        %>
 

		
<script type="text/javascript">

		//variable that will increment through the images
		var step=0

		function slideit(){
		document.getElementById('slide').src = slideimages[step].src
		if (step<5)
		step++
		else
		step=0
		//call function "slideit()" every 2.5 seconds
		setTimeout("slideit()",1000)
		}

slideit()
</script>
	</section>
	<aside><ul>
			<li><a href="Product/Our Hours.html">Our Hours</a></li>
		
		<li><a href="Product/ReadymadeFormalShirts.html">Ebook Collections</a></li>
	        
			<li><a href="Product/books.jsp">Books Collections</a></li>
			
		</ul></aside>
	<footer>
		<p>&copy; 2015, Gurusivagnanam Nimya</p>
	</footer>
</body>
</html>
