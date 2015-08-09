<%-- 
    Document   : CopyRight.jsp
    Created on : 9-Aug-2015, 5:04:13 PM
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
				<li><a  href="books.jsp">Books</a></li>
				<li><a  href="CopyRight.jsp">Copy Right </a></li>
				<li><a  href="AskUs.jsp" id="email">Ask Us</a></li>
			</ul>
		</nav>		
	</header>
	<section>
		
		<h1>WELCOME TO SARNIA LIBRARY!!</h1>

                
			<ul>
				<h2>This our info of copy right</h2>
<li>In Canada, all original creative works are protected by copyright law as soon as they are fixed in some format.</li>
 <li>This includes print materials, art work, photos, videos, CDROMs, DVDs, images, computer software, web pages, emails, wikis and blogs.</li>
<li> The Copyright Act grants a series of rights to the copyright owner, who is most often the author or creator of the work.</li>
<li> If the work is created in the course of employment, the employer holds the copyright.</li><li>Only the copyright owner has the right to decide when and how the work is copied or reproduced.</li> 
<li>Copyright protection is automatic upon the creation of a work, and applies whether or not a copyright statement appears on the material.</li>
<li> The general rule is that copyright expires 50 years after the death of the creator of the work. </li> 

<li>Copyright users are given exceptions in the Act that allow them to copy the work of copyright holders without asking permission or paying fees.</li> 
<li>There are exceptions for all Canadians and special exceptions for groups such as educational institutions and libraries.</li> 
<li>As you might expect, all exceptions have requirements that must be followed for the copying to be legal.</li>

<li>The Copyright Act can be viewed online at http://laws-lois.justice.gc.ca/eng/acts/C-42/index.html</li>

		 <h2>LIBRARY BOOKS</h2>
                 <style>
                     #w{
                         height:80px;
                         width:150px;
                             
                         
                     }
                 </style>
		 <p><img id="w" src="images/library_pataskala_026.jpg" /></br></br>
		
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
