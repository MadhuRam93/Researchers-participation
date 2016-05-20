<%--
	Document: aboutl.jsp
	Created On: Feb 4, 2016
	Authors: Deepak Rohan, Abhishek

 --%>
<%-- Include tag is used to import header page --%>
<%@ include file="header.jsp" %>
<%-- Code to go back to Main page  --%>
<br>
<h3><span id="studies">Reported Questions</span></h3><br/>
<a href="<c:url value='admin.jsp' />" id="back_to_page">&laquo;Back to the Main Page</a><br/>
<br/><br/><br/>

  <div class="table-responsive">
  <table class="table" >
        <%--Column Names --%>
        <tr>
            <th>Question</th>
            <th>Action</th>		
        </tr>
        
        <c:forEach var="reported" items="${requestScope.Reported}">
            <tr>
                <td><c:out value="${reported.getQuestion()}" /></td>
                <td>
                    <a href="<c:url value='StudyController?action=approve&StudyCode=${reported.getStudyCode()}&QuestionID=${reported.getQuestionID()}' />"<button type="button" 
                                                             class="btn btn-primary">Approve</button></a>
                    <a href="<c:url value='StudyController?action=disapprove&StudyCode=${reported.getStudyCode()}&QuestionID=${reported.getQuestionID()}' />"<button type="button" 
                                                             class="btn btn-primary">Disapprove</button></a>                                         

                </td>
            </tr>
        </c:forEach>
      
        </table>
        </div>
  
  
<%-- Include tag is used to import footer page --%>
<%@ include file="footer.jsp" %>