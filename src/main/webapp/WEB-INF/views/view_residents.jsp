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
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        text-align: center;
        width: 80%;
        max-width: 900px;
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

    h3 a {
        text-decoration: none;
        color: white;
        background: linear-gradient(to right, #1a237e, #f57c00);
        padding: 10px 20px;
        border-radius: 6px;
        font-size: 16px;
        display: inline-block;
        transition: background 0.3s ease;
        margin-top: 20px;
    }

    h3 a:hover {
        background: linear-gradient(to right, #0d47a1, #ef6c00);
    }
</style>

</head>
<body>
<div class="container">
    <table>
        <tr>
            <th>Name </th>
            <th>Contact </th>
            <th>Email </th>
            <th>Adhar </th>
            <th>Address </th>
        </tr>
        <% List<Resident> resi = (List<Resident>)request.getAttribute("residents"); 
        for(Resident rs : resi){
        %>
        <tr>
            <td><%=rs.getRname() %></td>
            <td><%=rs.getRcontact() %></td>
            <td><%=rs.getRemail() %></td>
            <td><%=rs.getRadhar() %></td>
            <td><%=rs.getrAddress() %></td>
        </tr>
        <%} %>
    </table>
    <h3><a href="admin_dashboard">Return to Admin DashBoard</a></h3>
</div>
</body>
</html>
