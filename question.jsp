<%--
	Document: aboutl.jsp
	Created On: Feb 4, 2016
	Authors: Deepak Rohan, Abhishek

 --%>
<%@page import="business.User"%>
<%@page import="business.Question"%>
<%-- Include tag is used to import header page --%>
<%@ include file="header.jsp" %>
<%-- Code to display items in List --%>
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
<%-- Code to Display Question--%>
<section class="question_section">
    
    <c:if test="${msg != null}">
        <h3><c:out value="${msg}" /></h3>
        <a href="<c:url value='main.jsp' />" id="back_to_page">&laquo;Back to the Main Page</a>
    </c:if>
    
        <c:if test="${msg == ''}">
            <h3><span class="label label-default" >Question</span></h3>
    <%-- Img tag to display image--%>
    <img src="images/${study_im.imageURL}" class="img-responsive" height="250" width="250" alt="Tree"/>

<%--Code to rating the Question --%>
    <h2 class="text-left"><c:out value="${study.question}" /></h2>

        <form action="StudyController" method="post">
            
            <input type="hidden" name="action" value="answer">
            <input type="hidden" name="studyCode" value="${study.studyCode}">
            <input type="hidden" name="Qid" value="${study.questionID}">
            
            <div class="radio"> <input type="radio" name="number" value="one" required> <c:out value="${study.option1}" /> </div>                
            <div class="radio"> <input type="radio" name="number" value="two" required> <c:out value="${study.option2}" />  </div>
            <div class="radio"> <input type="radio" name="number" value="three" required> <c:out value="${study.option3}" />  </div>
            <div class="radio"> <input type="radio" name="number" value="four" required> <c:out value="${study.option4}" />  </div>
            <div class="radio"> <input type="radio" name="number" value="five" required> <c:out value="${study.option5}" />  </div>
    
         <div class="form-group">
        <div class="col-sm-offset-3 col-sm-4">
        <button type="submit"  class="btn btn-primary">Submit</button>
         </div>
            </div>
            <br/><br/><br/>   
        </form>
        </c:if>
    
</section>
<%-- Include tag is used to import footer page --%>
<%@ include file="footer.jsp" %>