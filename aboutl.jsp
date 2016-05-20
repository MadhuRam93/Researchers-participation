<%--
	Document: aboutl.jsp
	Created On: Feb 4, 2016
	Authors: Deepak Rohan, Abhishek

 --%>
<%@page import="business.User"%>
<%-- Include tag is used to import header page --%>
<%@ include file="header.jsp" %>
<%-- Code to display items in List --%>

<c:if test="${sessionScope.theUser.type == 'Participant'}">
<nav id="menu">
    <ul>
        
        <%
            User u = (User)session.getAttribute("theUser");
            %>
            
        <li>Coins [<%= u.getNumCoins() %>] </li>
        <li>Participants [<%= u.getNumParticipants() %>] </li>
        <li>Participation [<%= u.getNumParticipation() %>] </li>
        <li><br></li>
        <li><a href="<c:url value='UserController?action=home' />">Home</a></li>
        <li><a href="<c:url value='StudyController?action=participate' />">Participate</a></li>
        <li><a href="<c:url value='StudyController?action=studies' />">My Studies</a></li>
        <li><a href="<c:url value='recommend.jsp' />">Recommend</a></li>
        <li><a href="<c:url value='contact.jsp' />">Contact</a></li>
    </ul>
    </nav>
    </c:if>


 <c:if test="${sessionScope.theUser.type == 'Admin' }">
 <nav id="menu">
 <ul>
	<li><a href="<c:url value='UserController?action=home' />">Home</a></li>
        <li><a href="<c:url value='StudyController?action=reported_questions' />">Reported Questions</a></li>
  </ul>
 </nav>
</c:if>

<%-- Section tag is used to write description  --%>
<section class="main">
    <h3>About us</h3>
    <p>Researchers Exchange Participations is a platform for researchers 
        to exchange participations</p>
    <p>The aim of this platform is to encourage researchers participate in each others
        user studies. Moreover, recruiting serious participants has been always a burden on
        a researcher's shoulder, thus, this platform gives researchers the opportunity
        to do that effectively and in a suitable time.</p>
</section>
<%-- Include tag is used to import footer page --%>
<%@ include file="footer.jsp" %>