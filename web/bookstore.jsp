<%-- 
    Document   : bookstore
    Created on : 8-Aug-2015, 7:32:04 PM
    Author     : c0646039
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0-alpha1/jquery.min.js"/></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.4/jquery-ui.js"></script>
        <script type="text/javascript">
            $(document).ready(function(){
               $('#doa').datepicker() ;
            });
        </script>
    </head>
    <body>
        <form action="book" method="post">
            Name:<input type="text" name="name"/><br>
            Book Name:<input type="text" name="bookname"/><br>
            Email Id:<input type="text" name="mail"/><br>
            Mobile:<input type="text" name="mobile"/><br>
            Address:<input type="text" name="address"/><br>
            Date:<input type="text" name="doa" id="doa"/><br>
            <input type="submit" value="Submit"/>
        </form>
    </body>
</html>
