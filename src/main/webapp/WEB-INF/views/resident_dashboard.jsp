<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
        background-color: #ffffff;
        padding: 30px 40px;
        border-radius: 12px;
        box-shadow: 0 0 15px rgba(0,0,0,0.1);
        width: 400px;
        text-align: center;
    }

    h2 {
        margin-bottom: 20px;
        color: #1a237e;
    }

    a {
        text-decoration: none;
        display: block;
        margin: 12px 0;
        padding: 10px;
        color: white;
        font-size: 16px;
        font-weight: bold;
        border-radius: 6px;
        background: linear-gradient(to right, #1a237e, #f57c00);
        transition: background 0.3s ease;
    }

    a:hover {
        background: linear-gradient(to right, #0d47a1, #ef6c00);
    }
</style>

</head>
<body>
    <div class="container">
        <h2>Resident Dashboard</h2>
        <h3><a href="apply_installations?contactID=<%=request.getParameter("contactID")%>">
            Apply For Solar Installations
        </a></h3>
        <h3><a href="view_application_status?contactID=<%=request.getParameter("contactID")%>">
            View Applications Status
        </a></h3>
        <h3><a href="view_installations_subsidy_reports?contactID=<%=request.getParameter("contactID")%>">
            View Installations And Subsidy Report
        </a></h3>
        <h3><a href="index">Logout</a></h3>
    </div>
</body>
</html>
