<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%@ page import="com.solar.model.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Installation Management</title>

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

    .container {
        background-color: #ffe5b4; /* Light orange */
        padding: 30px;
        border-radius: 12px;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        width: 90%;
        max-width: 1000px;
        text-align: center;
    }

    form {
        background: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 5px rgba(0,0,0,0.1);
        margin-bottom: 20px;
        text-align: left;
    }

    label {
        font-weight: bold;
        display: block;
        margin-top: 10px;
        color: #333;
    }

    input[type="text"], 
    input[type="radio"] {
        margin: 5px 0;
    }

    button[type="submit"] {
        margin-top: 15px;
        padding: 10px 20px;
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

    table {
        margin: 0 auto;
        width: 100%;
        border-collapse: collapse;
        background: #fff;
        border-radius: 8px;
        overflow: hidden;
        margin-top: 20px;
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

    table button {
        padding: 6px 12px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        background-color: #f57c00;
        color: white;
        font-size: 13px;
        transition: opacity 0.3s;
    }

    table button a {
        color: white;
        text-decoration: none;
    }

    table button:hover {
        opacity: 0.9;
    }

    h3 a {
        text-decoration: none;
        color: white;
        background: linear-gradient(to right, #1a237e, #f57c00);
        padding: 10px 20px;
        border-radius: 6px;
        font-size: 16px;
        display: inline-block;
        margin-top: 20px;
        transition: background 0.3s ease;
    }

    h3 a:hover {
        background: linear-gradient(to right, #0d47a1, #ef6c00);
    }
</style>
</head>
<body>
<div class="container">
    <form action="installationmarkcomplete" method="post">
        <input type="hidden" name="contactID" value="<%=request.getParameter("contactID") %>">
        <label>RequestID : </label>
        <input type="text" name="reqID" > 
        <label>SystemCost : </label>
        <input type="text" name="scost" > 
        <label>SubsidyAproved : </label>
        <input type="radio" name="subsidyAproved" value="yes" > <label for="yes">Yes</label>
        <input type="radio" name="subsidyAproved" value="no" > <label for="no">No</label>
        <label>Remark : </label>
        <input type="text" name="remark" > 
        <button type="submit">Mark as Install</button>
    </form>

    <table>
        <tr>
            <th>InstalationID</th>
            <th>ReqID</th>
            <th>InstallDate</th>
            <th>SystemCost</th>
            <th>SubsidyApproved</th>
            <th>Remarks</th>
            <th>CreateReport</th>
        </tr>

        <% List<Installation> list = (List<Installation>) request.getAttribute("installations");  
        for(Installation li : list){
            if(li.getIcontactID() == Long.parseLong(request.getParameter("contactID"))){
        %>
        <tr>
            <td><%=li.getIid() %></td>
            <td><%=li.getReqID() %></td>
            <td><%=li.getInstallDate() %></td>
            <td><%=li.getSystemCostt() %></td>
            <td><%=li.getSubsidyApproved() %></td>
            <td><%=li.getRemarks() %></td>
            <td><button><a href="create_report?installationID=<%=li.getIid() %>&contactID=<%=request.getParameter("contactID") %>">Create Report</a></button></td>
        </tr>
        <%  }
        } %>
    </table>
    <h3><a href="installer_dashboard?contactID=<%=request.getParameter("contactID")%>">Return To DashBoard</a></h3>
</div>
</body>
</html>
