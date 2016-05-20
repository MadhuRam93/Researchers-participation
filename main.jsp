
<%@page import="business.User"%>
<%-- Include tag is used to import header page --%>
<%@ include file="header.jsp" %>
<%-- Code to display items in List --%>
<nav id="menu">
        
    <c:if test="${sessionScope.theUser.type == 'Participant' }">
    <ul>
        <%
            User u = (User)session.getAttribute("theUser");
            %>
            
        <li>Coins [<%= u.getNumCoins() %>] </li>
        <li>Participants [<%= u.getNumParticipants() %>] </li>
        <li>Participation [<%= u.getNumParticipation() %>]  </li>
        <li><br></li>
        <li><a href="<c:url value='UserController?action=home' />">Home</a></li>
        <li><a href="<c:url value='StudyController?action=participate' />">Participate</a></li>
        <li><a href="<c:url value='StudyController?action=studies' />">My Studies</a></li>
        <li><a href="<c:url value='recommend.jsp' />">Recommend</a></li>
        <li><a href="<c:url value='contact.jsp' />">Contact</a></li>
    </ul>
</c:if>
<c:if test="${sessionScope.theUser.type == 'Admin' }">
    <ul>
        <li><a href="<c:url value='UserController?action=home' />">Home</a></li>
        <li><a href="<c:url value='StudyController?action=reported_questions' />">Reported Questions</a></li>
    </ul>
</c:if>
</nav>
<%-- Section tag is used to write description  --%>
<section class="main">
    <h3>How it Works</h3>
    <p>This site was built to help researchers conduct their user studies</p>
    <p>1 participation = 1 coin</p>
    <p><b>To participate,</b> go to "Participate" section and choose a study to complete</p>
    <p><b>To get participants,</b> submit your study here to start getting Participations. In order to do so, you must have enough coins in Your account</p>

</section>
<%-- Include tag is used to import footer page --%>
<%@ include file="footer.jsp" %>