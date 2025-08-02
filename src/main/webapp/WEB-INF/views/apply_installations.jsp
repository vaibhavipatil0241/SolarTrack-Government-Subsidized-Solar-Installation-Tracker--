<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="org.springframework.ui.Model" %>
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
        text-align: left;
        width: 90%;
        max-width: 500px;
    }

    form {
        background: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 5px rgba(0,0,0,0.1);
    }

    label {
        font-weight: bold;
        color: #333;
    }

    input[type="radio"] {
        margin: 5px;
    }

    button[type="submit"] {
        margin-top: 15px;
        width: 100%;
        padding: 10px;
        font-size: 16px;
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
</style>

</head>
<body>
<div class="container">
    <form action="applyforINstallationrequest" method="post">
        <input type="hidden" name="contactID" value="<%=request.getParameter("contactID") %>"/>

        <label>Select SolarType :</label><br>
        <input type="radio" name="solarType" value="Grid-Tie">
        <label for="Grid-Tie">Grid-Tie</label><br>

        <input type="radio" name="solarType" value="Off-Grid">
        <label for="Off-Grid">Off-Grid</label><br>

        <input type="radio" name="solarType" value="BackUP">
        <label for="BackUP">BackUP</label><br><br>

        <label>Select Capacity (per hour):</label><br>
        <input type="radio" name="capacityKW" value="0.5kw">
        <label for="0.5kw">0.5kw</label><br>

        <input type="radio" name="capacityKW" value="1.5kw">
        <label for="1.5kw">1.5kw</label><br>

        <input type="radio" name="capacityKW" value="2.5kw">
        <label for="2.5kw">2.5kw</label><br><br>

        <label>Subsidy Request :</label><br>
        <input type="radio" name="subsidyreq" value="10%">
        <label for="10%">10%</label><br>

        <input type="radio" name="subsidyreq" value="25%">
        <label for="25%">25%</label><br>

        <input type="radio" name="subsidyreq" value="50%">
        <label for="50%">50%</label><br>

        <button type="submit">Submit report</button>
    </form>
</div>
</body>
</html>
