<%-- 
    Document   : resetPassword
    Created on : 10 Apr, 2016, 9:45:05 PM
    Author     : madhu ramachandra
--%>

<%-- Include tag is used to import header page --%>
<%@include file="header.jsp" %>
<%-- Section to input login details --%>
<br/>
    <%-- Code to create login form--%>
    
    <c:if test="${msg != null}">
        <h3><c:out value="${msg}" /></h3>
    </c:if>
        
    <c:if test="${msg == ''}">
        
        <form class="form-horizontal" action="UserController" method="post">

            <input type="hidden" name="action" value="done">
            <input type="hidden" name="token" value="${Token}">
            
            <div class="form-group"><div class="col-sm-4 col-sm-offset-4 error"><c:out value="${msg1}" /></div></div>
            
                    <div class="form-group"> <label class="col-sm-4 control-label" >Email Address *</label>
                        <div class="col-sm-4"> <input type="email"  class="form-control" name="email" value="<c:out value='${EmailPass}' />" readonly/> </div>
                    </div>
            
                    <div class="form-group"> <label class="col-sm-4 control-label" >New Password *</label>
                        <div class="col-sm-4"> <input class="form-control" type="password" name="password" required/> </div>
                    </div>
                    
                    <div class="form-group"> <label class="col-sm-4 control-label" >Confirm Password *</label>
                        <div class="col-sm-4"> <input class="form-control" type="password" name="c_password" required/> </div>
                    </div>
                    
                    <div class="form-group">
                        <div class="col-sm-offset-4 col-sm-10"> <input type="submit" value="Reset" class="btn btn-primary" > </div>
                    </div>
        </form>
    </c:if>
    <%-- Include tag is used to import footer page --%>
<%@include file="footer.jsp" %>