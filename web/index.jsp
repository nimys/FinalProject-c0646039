<%-- 
    Document   : index.jsp
    Created on : 8-Aug-2015, 4:30:12 PM
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
				<li><a class="current" href="index.html">Home</a></li>
				<li><a  href="products/CopyRight .html">Copy Right </a></li>
				<li><a  href="products/Collections.html">Collections</a></li>
				<li><a  href="products/Research Support.html">Research Support</a></li>
				<li><a  href="Ask Us.html" id="email">Ask Us</a></li>
			</ul>
		</nav>		
	</header>
	<section>
		
		<h1>WELCOME TO SARNIA LIBRARY!!</h1>
	<ul>		 
<h2>Find Information</h2>
<li>Research Databases</li>
<li>Ebook Collections</li>
<li>Selected Web Resources</li>
<li>Online Catalogue</li>
<li>Other Library Catalogues</ul>
 	
<h2>Video Streaming</h2>
<li>Virtual Reference Desk</li>
<li>Web Search Tools</li>
<li>Interlibrary Loan</li>
 
<h2>Library Research Assistance	more...</h2>
<li>The Seven Steps of the Research Process</li>
<li>Research Worksheet</li>
<li>Guide to Searching Research Databases</li>
<li>Types of Periodicals</li>
<li>Distinguishing Scholarly Journals from Other Periodicals</li>
<li>How to Identify a Scholarly Article</li>
<li>Elements of a Research Article</li>
<li>Anatomy of a Scholarly Article</li>
 	

</ul>
		 <h2>LIBRARY BOOKS</h2>
		 <p><img src="images/library_pataskala_026.jpg"  /></br></br>
		
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
	        <li><a href="Product/Ebook Collections.html">CasualShirts</a></li>
			<li><a href="Product/Video Streaming.html">Video Streaming</a></li>
			<li><a href="Product/Online Catalogue.html">Online Catalogue</a></li>
			<li><a href="Product/Online Copy Right.html">Copy Right</a></li>
			<li><a href="Product/Online Library Services.html">Library Services</a></li>
			<li><a href="Product/Online About The Library.html">About The Library</a></li>
		</ul></aside>
	<footer>
		<p>&copy; 2015, Gurusivagnanam Nimya</p>
	</footer>
</body>
</html>
