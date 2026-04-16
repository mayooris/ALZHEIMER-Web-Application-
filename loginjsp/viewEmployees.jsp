<%@ page import="java.util.*, com.example.Employee" %>
<h2>Account List</h2>
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
<table border="1" align="center">
<tr>
    <th>ID</th>
    <th>Name</th>
    <th>Email</th>
    <th>Phone</th>
</tr>

<%
    List<Employee> list = (List<Employee>) request.getAttribute("empData");
    if (list != null && !list.isEmpty()) {
        for (Employee emp : list) {
%>
<tr>
    <td><%= emp.getId() %></td>
    <td><%= emp.getName() %></td>
    <td><%= emp.getEmail() %></td>
    <td><%= emp.getPhone() %></td>
    <td>
        <a href="editEmployee.jsp?id=<%= emp.getId() %>">Edit</a> |
        <a href="DeleteEmployeeServlet?id=<%= emp.getId() %>">Delete</a>
    </td>
</tr>

<%
        }
    } else {
%>
<tr><td colspan="5">No Account Found</td></tr>
<%
    }
%>
</table>

