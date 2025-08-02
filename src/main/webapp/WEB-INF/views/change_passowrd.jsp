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
        background-color: #ffe5b4; /* Light orange container */
        padding: 30px;
        border-radius: 12px;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        text-align: center;
        width: 400px;
    }

    form {
        background: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
        text-align: left;
    }

    label {
        display: block;
        margin-top: 10px;
        color: #333;
        font-weight: bold;
    }

    input[type="password"] {
        width: 100%;
        padding: 8px;
        margin-top: 4px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    button[type="submit"] {
        margin-top: 15px;
        width: 100%;
        padding: 10px;
        font-size: 14px;
        color: white;
        background: linear-gradient(to right, #1a237e, #f57c00);
        border: none;
        border-radius: 6px;
        cursor: pointer;
        transition: background 0.3s ease;
    }

    button[type="submit"]:hover {
        background: linear-gradient(to right, #0d47a1, #ef6c00);
    }

    h3 a {
        text-decoration: none;
        color: white;
        background: linear-gradient(to right, #1a237e, #f57c00);
        padding: 8px 15px;
        border-radius: 6px;
        font-size: 14px;
        display: inline-block;
        transition: background 0.3s ease;
        margin-top: 15px;
    }

    h3 a:hover {
        background: linear-gradient(to right, #0d47a1, #ef6c00);
    }
</style>
</head>
<body>
<div class="container">
    <h3>Change Your Password</h3>
    <form action="changePAsswordofinstaller" method="post">
        <input type="hidden" name="contactID" value="<%=request.getParameter("contactID") %>">
        <label>Enter old Password :</label>
        <input type="password" name="oldpass" required>
        <label>Enter New Password : </label>
        <input type="password" name="newpass" required>
        <button type="submit">Change Password</button>
    </form>
    <h3><a href="installer_dashboard?contactID=<%=request.getParameter("contactID")%>">Return To DashBoard</a></h3>
</div>
</body>
</html>
