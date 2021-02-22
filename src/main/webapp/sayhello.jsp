<%-- 
    Document   : sayhello
    Created on : 08/02/2021, 23:08:15
    Author     : viter
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SayHello.jsp</title>
    </head>
    <body>
        <jsp:useBean id="myBean" class="hello.MessageBean"/>
        <jsp:useBean id="myBean2" class="hello.MessageBean2"/>
        <%Date data = new Date(System.currentTimeMillis());%> 
        <% SimpleDateFormat formatarDate = new SimpleDateFormat("dd-MM-yyyy"); %>
        <% formatarDate.format(data); %>
        <h1>SayHello.jsp</h1>
        <% String lang = request.getParameter("lang"); %>
        
        <jsp:setProperty name="myBean" property="msg" value="<%=lang%>"/>
        <jsp:setProperty name="myBean2" property="msg" value="<%=lang%>"/>
        <jsp:getProperty name="myBean" property="msg"/> <%=request.getParameter("nome")%>, <jsp:getProperty name="myBean2" property="msg"/>?
    </body>
</html>
