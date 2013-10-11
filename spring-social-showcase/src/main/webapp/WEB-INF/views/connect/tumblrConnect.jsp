<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<%@ page session="false" %>

<h3>Connect to Tumblr</h3>

<form action="<c:url value="/connect/tumblr" />" method="POST">
	<div class="formInfo">
		<p>
			You haven't created any connections with Tumblr yet. Click the button to connect Spring Social Showcase with your Tumblr account.
			(You'll be redirected to Tumblr where you'll be asked to authorize the connection.)
		</p>
	</div>
	<p><button type="submit"><img src="<c:url value="/resources/social/tumblr/connect-with-tumblr.png" />"/></button></p>
	<%--<label for="postTumblr"><input id="postTumblr" type="checkbox" name="postTumblr" /> Post a tweet about connecting with Spring Social Showcase</label>--%>
</form>
