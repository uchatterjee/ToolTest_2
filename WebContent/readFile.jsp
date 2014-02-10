
<%@page import="java.io.File"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.net.URL"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Read Text</title>
    </head>
    <body>
    <img src="https://adedata.arkansas.gov/App_Resources/img/ade-logo.gif" alt="ADE">
    <br><br><b><br>Please click Validate to verify contents and text formatting of the uploaded file.</b>
        <br>
        <form action = "FileCheck.jsp" method="post"
                        enctype="multipart/form-data">
<input type="submit" value="Validate"/>
</form><br>
    
    
        <%
            String jspPath = "C:\\Users\\uchatterjee\\workspace\\ToolTest_2\\data\\";
            String txtFilePath = jspPath+ "\\IdentityResolutionTest.csv";
            BufferedReader reader = new BufferedReader(new FileReader(txtFilePath));
            StringBuilder sb = new StringBuilder();
            String line;

            while((line = reader.readLine())!= null){
                sb.append(line+"<br>");
            }
            out.println(sb.toString());
            reader.close();
        %>
        
        <b><br>Please click Validate to verify contents and text formatting of the uploaded file.</b>
        <br>
        <form action = "FileCheck.jsp" method="post"
                        enctype="multipart/form-data">
<input type="submit" value="Validate"/>
</form>
    </body>
</html>