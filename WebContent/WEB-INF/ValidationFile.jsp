<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.FileReader"%>
<%@ page import="java.io.BufferedReader"%>
<%@ page import="java.io.FileNotFoundException"%>
<%@ page import="java.io.IOException"%>

<%

	 
		System.out.println("Before");
		File csvFile = new File("C:\\Users\\uchatterjee\\workspace\\ToolTest_2\\data\\IdentityResolutionTest.csv");
		System.out.println("After");
		BufferedReader br = null;
		String line = "";
		String cvsSplitBy = ",";
	 
		try {
	 
			br = new BufferedReader(new FileReader(csvFile));
			while ((line = br.readLine()) != null) {
	 
			        // use comma as separator
				String[] data = line.split(cvsSplitBy);
	 
				System.out.println(data[0]);
				System.out.println(data[1]);
				System.out.println(data[2]);
				System.out.println(data[3]);
				System.out.println(data[4]);
				System.out.println(data[5]);
	 
			}
	 
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if (br != null) {
				try {
					br.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	 
	 
	 
	
%>
</body>
</html>