<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Installer Registration</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f5f7fa;
        margin: 0;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
    }

    h3 {
        color: #003366;
        text-align: center;
    }

    form {
        background-color: #ffffff;
        padding: 25px;
        border-radius: 12px;
        width: 420px;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
        text-align: left;
    }

    label {
        display: block;
        margin-top: 12px;
        color: #333;
        font-weight: bold;
    }

    input[type="text"],
    input[type="email"],
    input[type="password"] {
        width: 100%;
        padding: 8px;
        margin-top: 4px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    button[type="submit"] {
        margin-top: 20px;
        width: 100%;
        padding: 10px;
        font-size: 16px;
        color: white;
        background: linear-gradient(to right, #1a237e, #f57c00);
        border: none;
        border-radius: 6px;
        cursor: pointer;
    }

    button[type="submit"]:hover {
        background: linear-gradient(to right, #0d47a1, #ef6c00);
    }

    p {
        margin-top: 20px;
        text-align: center;
    }

    a {
        text-decoration: none;
        color: #1a237e;
        font-weight: bold;
    }

    a:hover {
        text-decoration: underline;
    }
</style>

</head>
<body>

<h3>Enter Installer Detail</h3>

<form action="add_installer" method="post">
    <label>Name:</label>
    <input type="text" name="iname" required>

    <label>License No:</label>
    <input type="text" name="ilicense" required>

    <label>Email:</label>
    <input type="email" name="iemail" required>

    <label>Contact:</label>
    <input type="text" name="icontact" minlength="10" maxlength="10" required>

    <label>Password:</label>
    <input type="password" name="ipassword" required>

    <button type="submit">Register</button>
</form>

<p><a href="add_view_delete_installers">Back To DashBoard</a></p>

</body>
</html>
