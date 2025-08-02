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
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .container {
        background-color: #ffe5b4; /* Light orange center box */
        padding: 20px 30px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
        text-align: center;
        width: 90%;
        max-width: 900px;
    }

    table {
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
        background-color: #1a237e; /* Blue header */
        color: white;
    }

    button {
        padding: 5px 10px;
        border: none;
        border-radius: 4px;
        background-color: #f57c00; /* Orange button */
        color: white;
        cursor: pointer;
        margin: 2px;
        transition: opacity 0.3s ease;
    }

    button a {
        color: white;
        text-decoration: none;
    }

    button:hover {
        opacity: 0.9;
    }

    h3 a {
        text-decoration: none;
        color: white;
        background: linear-gradient(to right, #1a237e, #f57c00);
        padding: 8px 15px;
        border-radius: 5px;
        display: inline-block;
        margin-top: 15px;
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
            <th>RequestID</th>
            <th>SystemType</th>
            <th>CapacityKW</th>
            <th>SubsidyRequired</th>
            <th>RequestDate</th>
            <th>RequestStatus</th>
            <th>Update</th>
        </tr>
        <% List<InstallationRequest> requests =(List<InstallationRequest>) request.getAttribute("requests"); 
        for(InstallationRequest req : requests){
        %>
        <tr>
            <td><%=req.getReqid() %></td>
            <td><%=req.getSystemType() %></td>
            <td><%=req.getCapacityinKW() %></td>
            <td><%=req.getSubsidyReq() %></td>
            <td><%=req.getReqDate() %></td>
            <td><%=req.getReqstatus() %></td>
            <td>
                <button><a href="approve?reqid=<%=req.getReqid()%>">Approve</a></button>
                <button><a href="reject?reqid=<%=req.getReqid()%>">Reject</a></button>
            </td>
        </tr>
        <%} %>
    </table>
    <h3><a href="admin_dashboard">Return to Admin DashBoard</a></h3>
</div>
</body>
</html>
