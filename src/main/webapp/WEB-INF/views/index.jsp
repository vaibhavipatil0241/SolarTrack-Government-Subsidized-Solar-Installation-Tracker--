<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: url('https://www.ianhobbs.com/wp-content/uploads/2023/07/What-are-the-Benefits-of-Solar-Panel-Installation.jpg') no-repeat center center fixed; 
        background-size: cover;
        margin: 0;
        padding: 20px;
        text-align: center;
    }

    h2 {
        color: #f36e21; /* Orange color */
        font-size: 42px; /* Bigger text */
        text-shadow: 2px 2px 6px rgba(0, 0, 0, 0.6);
        margin-bottom: 10px;
    }
    h1 {
        color: #fff;
        text-shadow: 1px 1px 4px rgba(0, 0, 0, 0.7);
    }

    .subtitle {
        font-size: 14px;
        color: #f1f1f1;
        margin-bottom: 20px;
        text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.6);
    }

    .form-container {
        display: flex;
        justify-content: center;
        gap: 30px;
        flex-wrap: wrap;
        margin-top: 30px;
    }

    form {
        background: rgba(255, 255, 255, 0.7); /* Light transparent white */
        padding: 25px 30px;
        border-radius: 10px;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.3);
        width: 280px;
        text-align: left;
    }

    form h3 {
        text-align: center;
        color: #333;
        margin-bottom: 10px;
    }

    label {
        display: block;
        margin: 10px 0 5px;
        font-weight: bold;
        color: #333;
    }

    input[type="text"],
    input[type="password"] {
        width: 100%;
        padding: 8px;
        border-radius: 5px;
        border: 1px solid #ccc;
        box-sizing: border-box;
    }

    button {
        margin-top: 15px;
        width: 100%;
        padding: 10px;
        border: none;
        border-radius: 5px;
        font-weight: bold;
        color: white;
        background: linear-gradient(to right, #0b3d91, #f36e21);
        cursor: pointer;
        font-size: 14px;
    }

    button:hover {
        opacity: 0.95;
    }

    .register-link {
        margin-top: 10px;
        font-size: 13px;
        text-align: center;
    }

    .register-link a {
        text-decoration: none;
        color: #0b3d91;
        font-weight: bold;
    }

    .icon {
        display: flex;
        justify-content: center;
        align-items: center;
        font-size: 40px;
        margin-bottom: 10px;
    }
</style>
</head>
<body>

<h2>SolarTrack</h2>
<h1>Choose Your Role</h1>
<p class="subtitle">Select your account type for accessing appropriate role</p>

<div class="form-container">

    <!-- Admin Form -->
    <form action="AdminLogIn" method="post">
        <div class="icon"></div>
        <h3>Admin LogIn</h3>
        <label>Username:</label>
        <input type="text" name="email" required>
        <label>Password:</label>
        <input type="password" name="password" required>
        <button type="submit">LogIn</button>
    </form>

    <!-- Resident Form -->
    <form action="ResidentLogIn" method="post">
        <div class="icon"></div>
        <h3>Resident LogIn</h3>
        <label>Username:</label>
        <input type="text" name="contactID" required>
        <label>Password:</label>
        <input type="password" name="password" required>
        <button type="submit">LogIn</button>
        <div class="register-link">
            Don't have an account? <a href="resident_register">Register</a>
        </div>
    </form>

    <!-- Installer Form -->
    <form action="InstallerLogIn" method="post">
        <div class="icon"></div>
        <h3>Installer LogIn</h3>
        <label>Username:</label>
        <input type="text" name="contactID" required>
        <label>Password:</label>
        <input type="password" name="password" required>
        <button type="submit">LogIn</button>
    </form>

</div>

</body>
</html>
