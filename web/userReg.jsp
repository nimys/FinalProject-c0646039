<%-- 
    Document   : userReg
    Created on : 8-Aug-2015, 4:53:09 PM
    Author     : c0646039
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
      
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
      
        <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.3/themes/smoothness/jquery-ui.css">
            <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
            <script src="http://code.jquery.com/ui/1.11.3/jquery-ui.js"></script>
          

            <title>Book Store</title>
            <link rel="stylesheet" type="text/css" href="style.css" />



    </head>
    <body background="images/background.jpg">
        <div id="wrap">

            <div class="header">
                <div class="logo"><a href="index.jsp"><img src="images/logo.gif" alt="" title="" border="0" /></a></div>            
                <div id="menu">
                    <ul>                                                                       
                        <li class="selected"><a href="index.jsp">Home</a></li>
                        <li><a href="about.jsp">About us</a></li>
                        <li><a href="category.jsp">Books</a></li>
                        <li><a href="specials.jsp">Special Books</a></li>
                       
                        <li><a href="contact.jsp">Contact</a></li>
                    </ul>
                </div>     


            </div> 


            <div class="center_content">
                <div class="left_content">
                    <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>Register</div>

                    <div class="feat_prod_box_details">
                        <p class="details">
                            <h3><strong>Register it's free!</strong></h3>
                        </p>

                        <div class="contact_form">
                            <div class="form_subtitle">create new account</div>
                            <form name="register" action="signUpServlet">          
                                <div class="form_row">
                                    <label class="contact"><strong>First Name:</strong></label>
                                    <input type="text" class="contact_input" name="firstName" />
                                </div>  

                                <div class="form_row">
                                    <label class="contact"><strong>Last Name:</strong></label>
                                    <input type="text" class="contact_input" name="lastName" />
                                </div>  

                                <div class="form_row">
                                    <label class="contact"><strong>Email:</strong></label>
                                    <input type="text" class="contact_input" name="email" />
                                </div>

                                <div class="form_row">
                                    <label class="contact"><strong>Password:</strong></label>
                                    <input type="text" class="contact_input" name="password" />
                                </div> 

                                <div class="form_row">
                                    <label class="contact"><strong>Job:</strong></label>
                                    <input type="text" class="contact_input"  name="job"/>
                                </div>

                                <div class="form_row">
                                    <label class="contact"><strong>birthday:</strong></label>
                                    <input type="text" class="contact_input" name="birthday" />
                                </div>

                                <div class="form_row">
                                    <label class="contact"><strong>Address:</strong></label>
                                    <input type="text" class="contact_input" name="address" />
                                </div>                    

                                <div class="form_row">
                                    <label class="contact"><strong>Credit Balance:</strong></label>
                                    <input type="text" class="contact_input" name="credit" />
                                </div>

                                <div class="form_row">
                                    <div class="terms">
                                        <input type="checkbox" name="terms" />
                                        I agree to the <a href="#">terms &amp; conditions</a>                        </div>
                                </div> 


                                <div class="form_row">
                                    <input type="submit" class="register" value="register" />
                                </div>   
                            </form>     
                        </div>  

                    </div>	

                    
                        
            

                    <!-- <div data-role="main" class="ui-content">
                        <form method="post" action="demoform.asp">
                          <label for="points">Points:</label>
                          <input type="range" name="points" id="points" value="50" min="0" max="100" data-show-value="true">
                          <input type="submit" data-inline="true" value="Submit">
                      </form>
                      </div> -->






                <div class="title"><span class="title_icon"><img src="images/bullet3.gif" alt="" title="" /></span>About Our Store</div> 
                <div class="about">
                    <p>
                        <img src="images/about.gif" alt="" title="" class="right" />
                        BookStore.com, was established in 2015 by a group of ITI trainees from Mobile Development department intake 35 as a part of their Servlet &amp; JSP course project.
                    </p>

                </div>

                <div class="right_box">

                    <div class="title"><span class="title_icon"><img src="images/bullet5.gif" alt="" title="" /></span>Categories</div> 

                    <ul class="list">
                            <li><a href="ViewBookByCategory?category=social"><span class="red"><strong>Social</strong></span></a></li>
                            <li><a href="ViewBookByCategory?category=history"><span class="red"><strong>History</strong></span></a></li>
                            <li><a href="ViewBookByCategory?category=culture"><span class="red"><strong>Culture</strong></span></a></li>
                            <li><a href="ViewBookByCategory?category=kids"><span class="red"><strong>Kids</strong></span></a></li>
                        </ul>


                </div>         


            </div><!--end of right content-->




            <div class="clear"></div>
        </div><!--end of center content-->


        <div class="footer">
            <div class="left_footer"><a href="index.jsp" title="Home"><img src="images/footer_logo.gif" alt="" title="" /></a>
                <!-- <br /> <a href="http://csscreme.com/freecsstemplates/" title="free templates"><img src="images/csscreme.gif" alt="free templates" title="free templates" border="0" /></a> --></div>
            <div class="right_footer">
                <a href="index.jsp">Home</a>
                <a href="about.jsp">About us</a>
                <a href="contact.jsp">Contact us</a>

            </div>


        </div>


        </div>
        		
<h1>Please enter the following information: </h1>
			<form name="email" action="subscribe.html" method="post">
			<label for="first_name">First Name:</label>
				<input type="text" name="first_name" id="first_name" autofocus required><br>
				<label for="last_name">Last Name:</label>
				<input type="text" name="last_name" id="last_name" required><br>	
				<label for="email">Email:</label>
				<input type="text" name="email" id="email" required><br>
				<label for="zip">Canadian Postal Code:</label>
				<input type="text" name="zip" id="zip" pattern="[A-Z][0-9][A-Z]\s+[0-9][A-Z][0-9]" placeholder="formate:A#A #A#" required><br>
				<input type="submit" name="submit" id="button" value="Subscribe">
			</form>

    </body>
</html>
