<%
String user = (String) session.getAttribute("username");
%>
<h2>Login Success!</h2>
<p>Welcome <%= user %></p>
