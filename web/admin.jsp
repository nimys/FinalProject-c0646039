<%-- 
    Document   : admin.jsp
    Created on : 8-Aug-2015, 4:45:58 PM
    Author     : c0646039
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
        <title>Book Store</title>
        <link rel="stylesheet" type="text/css" href="style.css" />
    </head>
    <body>


        <div id="wrap">

            <div class="header">
                <div class="logo"><a href="index.jsp"><img src="images/logo.gif" alt="" title="" border="0" /></a></div>            
                <div id="menu">



                </div>     


            </div> 


            <div class="center_content">
                <div class="left_content">
                    <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>admin</div>

                    <div class="feat_prod_box_details">


                        <div class="contact_form">
                            <div class="form_subtitle">Select Item to edit</div>
                            <form name="products" action="FoundBookDetails" method="post">          

                                <div class="form_row" name= "select">



                                    <%@ page import="java.io.*,java.util.*,java.sql.*"%> 
                                    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
                                    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%> 
                                    <sql:setDataSource
                                        driver="com.mysql.jdbc.Driver"
                                        url="jdbc:mysql://localhost:3306/bookstore"
                                        user="root" password="root"
                                        var="databaseOne"
                                        scope="session" />

                                    <sql:query dataSource="${databaseOne}" var="result"> 
                                        SELECT * FROM bookStore.book;
                                    </sql:query> 
                                    <select  name= "booklist" >
                                        <c:forEach items="${result.rows}" var="row">
                                            <option name="bookitem" value="${row.name}">${row.name}</option>

                                        </c:forEach>
                                    </select>
                                </div> 



                                <div class="form_row">
                                    <input type="submit" class="register" value="edit book"/>
                                </div>  
                                     <div class="form_row">
                                    <input type="submit" class="register" value="add book" name="add"/>
                                </div>  
                            </form>

                        </div>  

                    </div>	






                    <div class="clear"></div>
                </div><!--end of left content-->

                <div class="right_content">

                    <div class="languages_box">
                        <span class="red">Languages:</span>
                        <a href="#"><img src="images/gb.gif" alt="" title="" border="0" /></a>
                        <a href="#"><img src="images/fr.gif" alt="" title="" border="0" /></a>
                        <a href="#"><img src="images/de.gif" alt="" title="" border="0" /></a>
                    </div>
                    <div class="currency">
                        <span class="red">Currency: </span>
                        <a href="#">GBP</a>
                        <a href="#">EUR</a>
                        <a href="#"><strong>USD</strong></a>
                    </div>


                    <div class="cart">
                        <div class="title"><span class="title_icon"><img src="images/cart.gif" alt="" title="" /></span>My cart</div>
                        <div class="home_cart_content">
                            3 x items | <span class="red">TOTAL: 100$</span>
                        </div>
                        <a href="cart.jsp" class="view_cart">view cart</a>

                    </div>

                    <div class="title"><span class="title_icon"><img src="images/bullet3.gif" alt="" title="" /></span>About Our Store</div> 
                    <div class="about">
                        <p>
                            <img src="images/about.gif" alt="" title="" class="right" />
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.
                        </p>

                    </div>

                    <div class="right_box">

                        <div class="title"><span class="title_icon"><img src="images/bullet4.gif" alt="" title="" /></span>Promotions</div> 
                        <div class="new_prod_box">
                            <a href="details.jsp">product name</a>
                            <div class="new_prod_bg">
                                <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span>
                                <a href="details.jsp"><img src="images/thumb1.gif" alt="" title="" class="thumb" border="0" /></a>
                            </div>           
                        </div>

                        <div class="new_prod_box">
                            <a href="details.jsp">product name</a>
                            <div class="new_prod_bg">
                                <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span>
                                <a href="details.jsp"><img src="images/thumb2.gif" alt="" title="" class="thumb" border="0" /></a>
                            </div>           
                        </div>                    

                        <div class="new_prod_box">
                            <a href="details.jsp">product name</a>
                            <div class="new_prod_bg">
                                <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span>
                                <a href="details.jsp"><img src="images/thumb3.gif" alt="" title="" class="thumb" border="0" /></a>
                            </div>           
                        </div>              

                    </div>

                    <div class="right_box">

                        <div class="title"><span class="title_icon"><img src="images/bullet5.gif" alt="" title="" /></span>Categories</div> 

                        <ul class="list">
                            <li><a href="#">accesories</a></li>
                            <li><a href="#">books gifts</a></li>
                            <li><a href="#">specials</a></li>
                            <li><a href="#">hollidays gifts</a></li>
                            <li><a href="#">accesories</a></li>
                            <li><a href="#">books gifts</a></li>
                            <li><a href="#">specials</a></li>
                            <li><a href="#">hollidays gifts</a></li>
                            <li><a href="#">accesories</a></li>
                            <li><a href="#">books gifts</a></li>
                            <li><a href="#">specials</a></li>  

                        </ul>

                        <div class="title"><span class="title_icon"><img src="images/bullet6.gif" alt="" title="" /></span>Partners</div> 

                        <ul class="list">
                            <li><a href="#">accesories</a></li>
                            <li><a href="#">books gifts</a></li>
                            <li><a href="#">specials</a></li>
                            <li><a href="#">hollidays gifts</a></li>
                            <li><a href="#">accesories</a></li>
                            <li><a href="#">books gifts</a></li>
                            <li><a href="#">specials</a></li>
                            <li><a href="#">hollidays gifts</a></li>
                            <li><a href="#">accesories</a></li>                              
                        </ul>      

                    </div>         


                </div><!--end of right content-->




                <div class="clear"></div>
            </div><!--end of center content-->


            <div class="footer">
                <div class="left_footer"><img src="images/footer_logo.gif" alt="" title="" /><br /> <a href="http://csscreme.com/freecsstemplates/" title="free templates"><img src="images/csscreme.gif" alt="free templates" title="free templates" border="0" /></a></div>
                <div class="right_footer">
                    <a href="#">home</a>
                    <a href="#">about us</a>
                    <a href="#">services</a>
                    <a href="#">privacy policy</a>
                    <a href="#">contact us</a>

                </div>


            </div>


        </div>

    </body>
</html>
