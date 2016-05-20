<%--
	Document: aboutl.jsp
	Created On: Feb 4, 2016
	Authors: Deepak Rohan, Abhishek

 --%>
<%@page import="business.User"%>
<%-- Include tag is used to import header page --%>
<%@ include file="header.jsp" %>
<%-- Code to display items in List --%>
<section>
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
<%-- Section to display studies and participate in that study--%>
<div>
   
     <h3 class="text-left"><span class="label label-default " >Studies</span>
         <span ><a class="label label-default" href="<c:url value='StudyController?action=report' />">Report History</a></span></h3>
     </div>
     <div class="form-group"><div class="col-sm-4 col-sm-offset-4 error"><c:out value="${msg}" /></div></div>
    <%-- Display the studies in the table --%>
    <%-- Clicking on Participate button displays Question.jsp page where 
            you can rate the question--%>
     
     <nav id="menu1">
     <div class="table-responsive">
    <table class="table" >
        <%--Column Names --%>
        <tr>
            <th>Study Name</th>
            <th>Image</th>      
            <th>Question</th>
            <th>Action</th>
            <th>Report</th>
        </tr>
        
        <c:forEach var="i" items="${openStudies}">
            <tr>
                <td><c:out value="${i.studyName}" /></td>
                <td><img src="images/${i.imageURL}" alt="image" /></td>
                <td><c:out value="${i.question}" /></td>
                <td><form method="post" action="StudyController?action=participate&studyCode=${i.studyCode}" > 
                        <input type="submit" class="participate_button" value="Participate" /> </form></td>
                <td><form method="post" action="StudyController?action=report&studyCode=${i.studyCode}"> 
                        <input type="submit" class="participate_button" value="Report" /> </form></td>
            </tr>            
        </c:forEach>
        
    </table>
    </div>
    </nav>
</section>
<%-- Include tag is used to import footer page --%>
<%@ include file="footer.jsp" %>