<!DOCTYPE html>
<html>
<head>
<title>Dashboard</title>
<link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="navbar.css">
    <style>
       
        * {
            transform-origin: center !important;
        }
    </style>
</head>
<body>
    <header>
        <div class="navbar">
            <ol><li>
            <a href="welcom.html">Home</a>
            <a href="aboutus.html">About Us</a>
            <a href="Symptoms.html">Symptoms</a>
            <a href="diet.html">Diet</a>
            <a href="Game.html">Game</a></li>
            <a href="login.jsp">Login</a>
            </li></ol>
        </div>
    </header>
<%
String user = (String) session.getAttribute("username");
if (user == null) {
    response.sendRedirect("login.jsp");
    return;
}
%>
<script>
localStorage.setItem('loggedInUser', '<%= user %>');
</script>

<h2>Welcome <%= user %>!</h2>
<div id="closs" align="center">
<button type="button" title="User Form"><a href="form">User Form</a></button><br>
<button type="button" title="Add Account"><a href="addEmployee.jsp">Add Account</a></button><br>
<button type="button" title="View Account"><a href="ViewEmployeesServlet">View Account</a></button><br>
<button type="button" onclick="signOut()">Sign Out</button>
</div>
<script>
function signOut() {
    localStorage.removeItem('loggedInUser');
    window.location.href = 'logout';
}
</script>
</body>
</html>
