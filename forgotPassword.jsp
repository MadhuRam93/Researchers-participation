<%-- 
    Document   : forgotPassword
    Created on : 9 Apr, 2016, 9:50:33 PM
    Author     : madhu ramachandra
--%>

<%-- Include tag is used to import header page --%>
<%@ include file="header.jsp" %>
<%-- Code to go back to Main page  --%>
<br>

<section>
    <div class="form-group"> <div class="col-sm-4 col-sm-offset-4 error"> Enter your Email Address to reset the password </div></div>
    
    <form class="form-horizontal" action="UserController" method="post">
    
        <div class="form-group"><div class="col-sm-4 col-sm-offset-4 error"><c:out value="${msg}" /></div></div>
        
        <input type="hidden" name="action" value="forgotPass">
        
            <div class="form-group"> <label class="col-sm-4 control-label" >Email Address *</label>
                <div class="col-sm-4"> <input type="email"  class="form-control" name="email" value="<c:out value='${email}' />"  required/> </div>
            </div>
       	
        <div class="form-group"><div class="col-sm-offset-4 col-sm-10">
            <input type="submit" value="Reset Password" class="btn btn-primary" ></div>
	</div>
    </form>
</section>
    
<%-- Include tag is used to import footer page --%>
<%@ include file="footer.jsp" %>