<%-- 
    Document   : uReg
    Created on : 8-Aug-2015, 6:25:59 PM
    Author     : c0646039
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form  action="userReg" method="post">          
                              
                                    <label class="contact"><strong>First Name:</strong></label>
                                    <input type="text" class="contact_input" name="fName" /><br>
                         

                              
                                    <label class="contact"><strong>Last Name:</strong></label>
                                    <input type="text" class="contact_input" name="lName" /><br>
                            

                                
                                    <label class="contact"><strong>Email:</strong></label>
                                    <input type="text" class="contact_input" name="email" /><br>
                            
                                
                                    <label class="contact"><strong>username:</strong></label>
                                    <input type="text" class="contact_input" name="userName" /><br>
                                

                               
                                    <label class="contact"><strong>Password:</strong></label>
                                    <input type="password" class="contact_input" name="pass" /><br>
                              
                                    

                              
                                    <input type="submit" class="register" value="submit" />
                                    <input type="reset" class="register" value="Reset" />
                                 
                            </form>  
    </body>
</html>
