<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- Section to display description --%>
<section class="copyright">
    <p>
        <c:forEach var="c" items="${cookie}">
            <c:if test = "${c.value.name == 'host' || c.value.name == 'port'}">

                <c:out value="${c.value.name}: ${c.value.value}" />

            </c:if>
        </c:forEach>
            
        &nbsp; &nbsp; &copy; Researchers Exchange Participations
    </p>
</section>
</body>
</html>

