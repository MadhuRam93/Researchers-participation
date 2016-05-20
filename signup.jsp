
<%-- Include tag is used to import header page --%>
<%@include file="header.jsp" %>

<%--Code to signup form --%>
<section>
<br/><br/><br/>

        <form class="form-horizontal" action="UserController" method="post">
        
            <div class="form-group"><div class="col-sm-4 col-sm-offset-4 error"><c:out value="${msg}" /></div></div>
            
            <input type="hidden" name="action" value="create" />
            <input type="hidden" name="recToken" value="${recToken}" />
            
            <div class="form-group">
            <label class="col-sm-4 control-label">Name *</label>
            <div class="col-sm-4">
            <input type="text" class="form-control" name="name" value="<c:out value='${u_name}' />" required/>
            </div>
            </div>
            <div class="form-group">
            <label class="col-sm-4 control-label">Email *</label>
            <div class="col-sm-4">
            <input type="email" class="form-control" name="email" value="<c:out value='${email}' />" required/>
            </div>
            </div>
            <div class="form-group">
            <label class="col-sm-4 control-label">Password *</label>
            <div class="col-sm-4">
            <input type="password" class="form-control" name="password" required/>
            </div>
            </div>
            <div class="form-group">
            <label class="col-sm-4 control-label">Confirm Password *</label>
            <div class="col-sm-4">
            <input type="password" class="form-control" name="confirm_password" required />
            </div>
			</div>
			<div class="form-group">
    <div class="col-sm-offset-5">
            <input type="submit" value="Create Account" class="btn btn-primary">
            </div>
            </div>
            <br><br/><br/>
        </form>
            
        </section>
  
<%-- Include tag is used to import footer page --%>
<%@include file="footer.jsp" %>