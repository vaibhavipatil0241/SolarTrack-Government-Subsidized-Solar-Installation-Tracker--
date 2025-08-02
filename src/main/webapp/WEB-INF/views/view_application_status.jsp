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
        background-color: #ffe5b4; /* Light orange box */
        padding: 30px 40px;
        border-radius: 12px;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        width: 90%;
        max-width: 900px;
        text-align: center;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 10px;
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
        background-color: #1a237e; /* Blue header */
        color: white;
    }

    tr:nth-child(even) {
        background-color: #f9f9f9;
    }

    tr:hover {
        background-color: #f1f1f1;
    }
</style>

</head>
<body>
<div class="container">
    <table>
        <tr>
            <th>ReqID</th>
            <th>reqDate</th>
            <th>CapacityKW</th>
            <th>SystemType</th>
            <th>SubsidyReq</th>
            <th>ReqStatus</th>
        </tr>
        <% 
        List<InstallationRequest> requests = (List<InstallationRequest>)request.getAttribute("requests");
        for(InstallationRequest re : requests){
            if(re.getResidentContactID() == Long.parseLong(request.getParameter("contactID"))){
        %>
        <tr>
            <td><%=re.getReqid() %></td>
            <td><%=re.getReqDate() %></td>
            <td><%=re.getCapacityinKW() %></td>
            <td><%=re.getSystemType() %></td>
            <td><%=re.getSubsidyReq() %></td>
            <td><%=re.getReqstatus() %></td>
        </tr>
        <% }} %>
    </table>
</div>
</body>
</html>
