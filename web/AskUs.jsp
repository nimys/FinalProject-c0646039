<%-- 
    Document   : AskUs.jsp
    Created on : 9-Aug-2015, 5:08:45 PM
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

                
				<section>
		
		<h1>Ask Us</h1>
		<p>Need Help? Ask Us!

Email  	
Email your question to asklibrary@lambtoncollege.ca

We will respond to your inquiry within 24 hours, often sooner. Responses to questions received over weekends and holidays will be made on the following workday.

 
In Person  	
Visit the Circulation Desk or the Reference Desk to receive one-on-one help with any of your questions.

 
By Phone  	
Phone our Reference Desk staff at 519-542-7751 ext. 3290 during the hours that the Library Resource Centre is open.

 
By Appointment  	
Research consultations are available by appointment. You will receive assistance in:

focusing your topic
creating search strategies
identifying and evaluating appropriate sources
searching our Research Databases effectively
Email Diane Brown (Diane.Brown@lambtoncollege.ca) to make an appointment.</p>		
	</section>

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
