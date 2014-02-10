<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.lang.*"%>
<%@ page import="ade.utsav.callJar" %>
<%@ page import="java.io.IOException"%>

<%-- <% callJar object = new callJar();
   object.invoke();
%> --%>
<%
/* String cmd = "java -Xmx24g -jar C:\\Oyster3.4\\Oyster_v.3.4.13.jar -r C:\\Oyster3.4\\IdentityResolutionRunScript.xml";


Runtime.getRuntime().exec(cmd); */

	String s = null;
	
	
		Process p = Runtime.getRuntime().exec("java -jar C:\\Oyster3.4\\Oyster_v.3.4.13.jar -r C:\\Oyster3.4\\IdentityResolutionRunScript.xml");
		
BufferedReader stdInput = new BufferedReader(new 
        InputStreamReader(p.getInputStream()));

   BufferedReader stdError = new BufferedReader(new 
        InputStreamReader(p.getErrorStream()));

   // read the output from the command
   System.out.println("Here is the standard output of the command:\n");
   while ((s = stdInput.readLine()) != null) {
       System.out.println(s);
   }
 

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Calling Oyster</title>
</head>
<body>
OYSTER is running..... Maybe... Hopefully... Goodluck! 
</body>
</html>