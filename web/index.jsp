<%-- 
    Document   : index.jsp
    Created on : 8-Aug-2015, 4:30:12 PM
    Author     : c0646039
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
        <!--jQuery-->
        <!-- <link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css"> -->
        <!-- // <script src="http://code.jquery.com/jquery-1.11.2.min.js"></script> -->
        <!-- // <script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script> -->
        <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.3/themes/smoothness/jquery-ui.css">
            <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
            <script src="http://code.jquery.com/ui/1.11.3/jquery-ui.js"></script>
            <script>
               
            </script>
            <!--jQuery-->

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
                        <li><a href="bookpurchase.jsp">Books Purchase</a></li>
                        <li><a href="specials.jsp">Special Books</a></li>
                       
                        <li><a href="contact.jsp">Contact</a></li>
                    </ul>
                </div>     


            </div> 


            <div class="center_content">
                <div class="left_content">

                    <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>Featured books</div>


                    <div class="title"><span class="title_icon"><img src="images/bullet2.gif" alt="" title="" /></span>New books</div> 

                    <div class="new_products">

                        <div class="new_prod_box">
                            <a href="details.jsp">product name</a>
                            <div class="new_prod_bg">
                                <span class="new_icon"><img src="images/new_icon.gif" alt="" title="" /></span>
                                <a href="details.jsp"><img src="images/thumb1.gif" alt="" title="" class="thumb" border="0" /></a>
                            </div>           
                        </div>

                        <div class="new_prod_box">
                            <a href="details.jsp">product name</a>
                            <div class="new_prod_bg">
                                <span class="new_icon"><img src="images/new_icon.gif" alt="" title="" /></span>
                                <a href="details.jsp"><img src="images/thumb2.gif" alt="" title="" class="thumb" border="0" /></a>
                            </div>           
                        </div>                    

                        <div class="new_prod_box">
                            <a href="details.jsp">product name</a>
                            <div class="new_prod_bg">
                                <span class="new_icon"><img src="images/new_icon.gif" alt="" title="" /></span>
                                <a href="details.jsp"><img src="images/thumb3.gif" alt="" title="" class="thumb" border="0" /></a>
                            </div>           
                        </div>          

                    </div> 


                    <div class="clear"></div>
                </div><!--end of left content-->

                <div class="right_content">

                    <div class="languages_box">
                       
                        </br>
                        </br>
                        
                        
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

    </body>
</html>
