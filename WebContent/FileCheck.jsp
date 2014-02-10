<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<img src="https://adedata.arkansas.gov/App_Resources/img/ade-logo.gif" alt="ADE">
<br><br><br>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%
//System.out.println("Before");
File valfile = new File("C:\\Users\\uchatterjee\\workspace\\ToolTest_2\\data\\IdentityResolutionTest.csv");
//System.out.println("After");
Scanner scanfile = new Scanner(valfile);
scanfile.useDelimiter(",");
String attr1 = scanfile.next(); //fname
String attr2 = scanfile.next(); //mname
String attr3 = scanfile.next(); //lname
String attr4 = scanfile.next(); //SSN
String attr5 = scanfile.next(); //DOB
String attr6 = scanfile.next(); //Gender

if(attr1.equals("FirstName"))
{
	//out.println("<script type='text/javascript'> alert('FirstName Validated')</script>");
	out.println("FirstName Validated");
	%> <br><% 
}
else
{
    //out.println("<script type='text/javascript'> alert('FirstName Incorrect Format')</script>");
    out.println("FirstName Incorrect Format");
}
if(attr2.equals("MiddleName"))
{
	//out.println("<script type='text/javascript'> alert('MiddleName Validated')</script>");
	out.println("MiddleName Validated");
	%><br><%
}
else
{
    //out.println("<script type='text/javascript'> alert('MiddleName Incorrect Format')</script>");	
    out.println("MiddleName Incorrect Format");
}
if(attr3.equals("LastName"))
{
	//out.println("<script type='text/javascript'> alert('LastName Validated')</script>");
	out.println("LastName Validated");
	%><br><%
}
else
{
    //out.println("<script type='text/javascript'> alert('LastName Incorrect Format')</script>");
    out.println("LastName Incorrect Format");
}
if(attr4.equals("SSN"))
{
	//out.println("<script type='text/javascript'> alert('SSN Validated')</script>");
	out.println("SSN Validated");
	%><br><%
}
else
{
    //out.println("<script type='text/javascript'> alert('SSN Incorrect Format')</script>");
    out.println("SSN Incorrect Format");
}
if(attr5.equals("DOB"))
{
	//out.println("<script type='text/javascript'> alert('DOB Validated')</script>");
	out.println("DOB Validated");
	%><br><%
}
else
{
    //out.println("<script type='text/javascript'> alert('DOB Incorrect Format')</script>");	
    out.println("DOB Incorrect Format");
}
if(attr6.equals("Gender"))
{
	//out.println("<script type='text/javascript'> alert('Gender Validated')</script>");
	out.println("Gender Validated");
	%><br><%
	out.println("<script type='text/javascript'> alert('Click Next to create OYSTER input for IR')</script>");
	%><br><%
}
else
{
    //out.println("<script type='text/javascript'> alert('Gender Incorrect Format')</script>");	
	out.println("Gender Incorrect Format");
}

%>
<form action = "generateOysterInput.jsp" method="post"
                        enctype="multipart/form-data">
<input type="submit" value="Next"/>
</form>
</body>
</html>