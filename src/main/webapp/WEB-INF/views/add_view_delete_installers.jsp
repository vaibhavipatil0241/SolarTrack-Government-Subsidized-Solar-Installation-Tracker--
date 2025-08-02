<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%@ page import="com.solar.model.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f5f7fa;
        margin: 0;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .container {
        background-color: #ffe5b4; /* Light orange center box */
        padding: 30px 40px;
        border-radius: 12px;
        box-shadow: 0 0 15px rgba(0,0,0,0.1);
        text-align: center;
        width: 80%;
        max-width: 900px;
    }

    h2 a, h3 a {
        text-decoration: none;
        color: white;
        background: linear-gradient(to right, #1a237e, #f57c00);
        padding: 10px 20px;
        border-radius: 6px;
        font-size: 16px;
        display: inline-block;
        transition: background 0.3s ease;
    }

    h2 a:hover, h3 a:hover {
        background: linear-gradient(to right, #0d47a1, #ef6c00);
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin: 20px 0;
        background: #fff;
        border-radius: 8px;
        overflow: hidden;
    }

    th, td {
        border: 1px solid #ddd;
        padding: 10px;
        text-align: center;
        font-size: 14px;
    }

    th {
        background-color: #1a237e;
        color: white;
    }

    td a {
        text-decoration: none;
        color: white;
        background: linear-gradient(to right, #1a237e, #f57c00);
        padding: 5px 12px;
        border-radius: 4px;
        font-size: 12px;
        transition: background 0.3s ease;
    }

    td a:hover {
        background: linear-gradient(to right, #0d47a1, #ef6c00);
    }
</style>

</head>
<body>
<div class="container">
    <h2><a href="installer_add">Add Installer</a></h2>

    <table>
        <tr>
            <th>Name</th>
            <th>License</th>
            <th>Email</th>
            <th>Contact</th>
            <th>Password</th>
            <th>Action</th>
        </tr>
        <% List<Installer> li = (List<Installer>)request.getAttribute("installers");
            for (Installer i : li){
        %>
        <tr>
            <td><%=i.getIname() %></td>
            <td><%=i.getIlicense() %></td>
            <td><%=i.getIemail() %></td>
            <td><%=i.getIcontact() %></td>
            <td><%=i.getIpassword() %></td>
            <td><a href="delete?icontact=<%=i.getIcontact() %>">Delete</a></td>
        </tr>
        <%} %>
    </table>

    <h3><a href="admin_dashboard">Admin_DashBoard</a></h3>
</div>
</body>
</html>
