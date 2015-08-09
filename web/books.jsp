<%-- 
    Document   : books.jsp
    Created on : 9-Aug-2015, 4:34:59 PM
    Author     : c0646039
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
   
<head>
	<meta charset="utf-8" />
	<title></title>
	<link rel="stylesheet" href="styles/main.css">

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
		
		<h1>WELCOME TO SARNIA LIBRARY!!</h1>


</ul>
		 <h2>LIBRARY BOOKS</h2>
                 
                 <table id="im">
                     <tr><td> <img id="ma" src="images/img1.jpg"  ><p>To order<a href="bookstore.jsp">click here</p></a></td>
                         
                         <td><img id="ma"  src="images/img3.jpg"  ><p>To order<a href="bookstore.jsp">click here</p></a></td></tr>
                     <tr><td> <img id="ma"  src="images/img4.jpg"  ><p>To order<a href="bookstore.jsp">click here</p></a></td>
                        <td><img id="ma"  src="images/img5.jpg"  ><p>To order<a href="bookstore.jsp">click here</p></a></td></tr>
                     <tr><td><img id="ma"  src="images/img6.jpg"><p>To order<a href="bookstore.jsp">click here</p></a></td>
                         <td> <p><img id="ma"  src="images/img7.jpg"><p>To order<a href="bookstore.jsp">click here</p></a></td></tr>
</table>
		
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

