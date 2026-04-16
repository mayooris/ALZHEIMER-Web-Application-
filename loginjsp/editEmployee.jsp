<%@ page import="java.sql.*" %>
<%
int id = Integer.parseInt(request.getParameter("id"));
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login_db","root","MYsqlmayoori@1!1");
PreparedStatement pst = con.prepareStatement("SELECT * FROM employee WHERE id=?");
pst.setInt(1,id);
ResultSet rs = pst.executeQuery();
rs.next();
%>
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="navbar.css">
    <style>
        
        * {
            transform-origin: center !important;
        }
        input {
      width: 50%;
      padding: 8px;
      background-color: transparent;
      box-shadow: none;
      border: none;
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
<form action="UpdateEmployeeServlet" method="post">
    <div class="cen" align="center">
<input type="hidden" name="id" value="<%=id%>">
Name: <input type="text" name="name" value="<%= rs.getString("name") %>"><br>
Email: <input type="text" name="email" value="<%= rs.getString("email") %>"><br>
Phone: <input type="tel" name="phone" value="<%= rs.getString("phone") %>"><br>
<button type="submit">Update</button>
</div>
</form>
