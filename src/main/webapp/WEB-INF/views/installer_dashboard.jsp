<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
        <h3><a href="view_approved_installation_request?contactID=<%=request.getAttribute("contactID") %>">
            View Approved Installation Request
        </a></h3>
        <h3><a href="mark_installation_as_complete?contactID=<%=request.getAttribute("contactID") %>">
            Mark Installation As Complete
        </a></h3>
        <h3><a href="change_passowrd?contactID=<%=request.getAttribute("contactID") %>">
            Change Password
        </a></h3>
        <h3><a href="index">Logout</a></h3>
    </div>
</body>
</html>
