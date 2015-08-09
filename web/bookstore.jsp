<%-- 
    Document   : bookstore
    Created on : 8-Aug-2015, 7:32:04 PM
    Author     : c0646039
--%>

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
				<li><a  href="products/books.jsp">Books</a></li>
				<li><a  href="products/CopyRight.jsp">Copy Right </a></li>
				<li><a  href="Ask Us.html" id="email">Ask Us</a></li>
			</ul>
		</nav>		
	</header>
	<section>
		
		<h1>WELCOME TO SARNIA LIBRARY!!</h1>
	<ul>		 
<h2>Give Your detail to order books</h2>
 <form action="book" method="post">
            Name:<input type="text" name="name"/><br>
            Book Name:<input type="text" name="bookname"/><br>
            Email Id:<input type="text" name="mail"/><br>
            Mobile:<input type="text" name="mobile"/><br>
            Address:<input type="text" name="address"/><br>
            Date:<input type="text" name="doa" id="doa"/><br>
            <input type="submit" value="Submit"/>
        </form>
		
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

