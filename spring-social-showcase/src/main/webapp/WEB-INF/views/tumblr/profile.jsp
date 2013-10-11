<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<%@ page session="false" %>

<h3>Your Tumblr Profile</h3>

<p>Hello, <c:out value="${profile.name}"/>!</p>
<%--<img src="<c:out value="${profile.profileImageUrl}"/>"/>--%>
<dl>
    <c:forEach var="blog" items="${profile.blogs}">
	<dt>Blog Name:</dt>
	<dd><a href="${blog.url}" target="_blank">${blog.name}</a></dd>
    </c:forEach>
</dl>

<c:url value="/connect/tumblr" var="disconnectUrl"/>
<form id="disconnect" action="${disconnectUrl}" method="post">
	<button type="submit">Disconnect from Tumblr</button>
	<input type="hidden" name="_method" value="delete" />
</form>

