<%--
	Document: aboutl.jsp
	Created On: Feb 4, 2016
	Authors: Deepak Rohan, Abhishek

 --%>
 
 <script>
     (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.6";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));
 </script>

<%-- Include tag is used to import header page --%>

<%@ include file="header.jsp" %>
<%-- Code to display Page Name --%>
<h3 id="page_name">My Studies</h3>

<section>
    <a href="<c:url value='main.jsp' />" id="back_to_page">&laquo;Back to the Main Page</a>

<c:if test="${msg != null}">
        <div class="form-group"><div class="col-sm-4 col-sm-offset-4 error"><c:out value="${msg}" /></div></div>
</c:if>
    
<c:if test="${msg == ''}">
 <%-- Code to add new study   --%>
 <h3 id="add_new_study"><a href="<c:url value='newstudy.jsp' />" >Add a new study</a></h3>
 <%-- Code to go Back to the Main Page  --%>
<%-- Section to display studies details --%> 
<%-- Clicking on Start, Stop to Participate in that study and  Edit button to display edit page and edit study details in it--%>


<div class="table-responsive">
    <table class="table" >
        <tr>
            <th>Study Name</th>
            <th>Requested Participants</th>     
            <th>Participations</th>
            <th>Status</th>
            <th>Action</th>
        </tr>
        
        <c:forEach var="studies" items="${requestScope.Studies}">
        
            <tr>
            <%-- First study details --%>
            <td><c:out value="${studies.getStudyName()}" /></td>
            <td><c:out value="${studies.getReqParticipants()}" /></td>
            <td><c:out value="${studies.getActParticipants()}" /></td>
           
            <c:if test="${studies.getStatus()=='stop'}">
                <td><a href="StudyController?action=start&StudyCode=${studies.getStudyCode()}" > </a><button type="button" 
                                                         class="btn btn-primary">Start</button></td>
            </c:if>
            
            <c:if test="${studies.getStatus()=='start'}">
                <td><a href="StudyController?action=stop&StudyCode=${studies.getStudyCode()}" > </a><button type="button" 
                                                         class="btn btn-primary">Stop</button></td>
            </c:if>
            
            <%-- Code to display edit page --%>
            <td>
                <form action="StudyController?action=edit&StudyCode=${studies.getStudyCode()}" method="post">
                    <button type="submit" class="btn btn-primary">Edit</button>
                    <div class="fb-share-button" data-href="http://nbadproj4-madhu93.rhcloud.com/NbadProj4/" data-layout="button_count" data-mobile-iframe="true"></div>                
                </form></td>

                </form>
            </td>

            </tr>
            
        </c:forEach>
        
    </table>
</div>
</c:if>

</section>
<%-- Include tag is used to import footer page --%>
<%@ include file="footer.jsp" %>