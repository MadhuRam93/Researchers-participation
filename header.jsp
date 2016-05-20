

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <%-- title of the Page--%>
        <title>Researchers Exchange Participations</title>
        <%-- importing CSS stylesheet --%>
        <link rel="stylesheet" href="styles/main.css">
        <script type="text/javascript" src="js/jquery-1.12.0.min.js"></script>
        <script type="text/javascript" src="js/main.js"></script>

        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        
        <script type="text/javascript"></script>
    
    </head>
    <body>
        <%-- Code to specify Header section of the page--%>
        <div id="header">
            <nav id="header_menu">
                <ul  class="left" >
                    <li> <a class="logo" href="<c:url value='UserController?action=main'/>" style="color: #009933"> Researchers Exchange Participations </a></li>
                </ul>
                <ul class="right">
                        
                    <c:if test="${sessionScope.theUser.type == 'Participant' }">
                        <li><a href="<c:url value='UserController?action=about' />">About Us</a></li>
                        <li><a href="<c:url value='UserController?action=how' />">How it Works</a></li>
                        <li> Hello, <%= session.getAttribute("u_name") %> </li>
                        <li><a href="<c:url value='UserController?action=logout' />"> LogOut </a></li>
                    </c:if>
                        
                    <c:if test="${sessionScope.theUser.type == 'Admin' }">
                        <li><a href="<c:url value='UserController?action=about' />">About Us</a></li>
                        <li><a href="<c:url value='UserController?action=how' />">How it Works</a></li>
                        <li> Hello, <%= session.getAttribute("u_name") %> </li>
                        <li><a href="<c:url value='UserController?action=logout' />"> LogOut </a></li>
                    </c:if>
                        
                    <c:if test="${sessionScope.theUser == null}">
                        <li><a href="<c:url value='UserController?action=about' />">About Us</a></li>
                        <li><a href="<c:url value='UserController?action=how' />">How it Works</a></li>
                        <li><a href="<c:url value='login.jsp' />">Login</a></li>
                    </c:if>
                </ul>
            </nav>
        </div>
        