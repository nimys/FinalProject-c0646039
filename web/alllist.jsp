<%-- 
    Document   : alllist
    Created on : 8-Aug-2015, 7:46:17 PM
    Author     : c0646039
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Database.dataBase"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            dataBase d=new dataBase();
            ResultSet r=d.getValues();
            out.println("<table>");
            while(r.next()){
                out.println("<tr><td>"+r.getString("name")+"<td>"+r.getString("bookname")+"<td>"+r.getString("emailid")+"<td>"+r.getString("mobile")+"<td>"+r.getString("address")+"<td>"+r.getString("d")+"</td></tr>");
            }
            out.println("</table>");
        %>
    </body>
</html>
