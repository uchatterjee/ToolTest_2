<%@ page import="java.io.FileReader"%>
<%@ page import="java.io.FileWriter"%>
<%@ page import="java.io.IOException"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.*"%>
<%@ page import="org.supercsv.io.CsvMapReader"%>
<%@ page import="org.supercsv.io.CsvMapWriter"%>
<%@ page import="org.supercsv.io.ICsvMapReader"%>
<%@ page import="org.supercsv.io.ICsvMapWriter"%>
<%@ page import="org.supercsv.prefs.CsvPreference"%>

<% /* System.out.println("hi") */;

        ICsvMapReader mapReader = null;
        ICsvMapWriter mapWriter = null;
        try {
        	/* System.out.println("before csv"); */
            CsvPreference prefs = CsvPreference.STANDARD_PREFERENCE;
            mapReader = new CsvMapReader(new FileReader("C:\\Users\\uchatterjee\\workspace\\ToolTest_2\\data\\IdentityResolutionTest.csv"), prefs);
            /* System.out.println("input"); */
            mapWriter = new CsvMapWriter(new FileWriter("C:\\Oyster3.4\\CustomRun\\Input\\IdentityResolutionTest.txt"), prefs);
            /* System.out.println("output"); */

            // header used to read the original file
            final String[] readHeader = mapReader.getHeader(true);
            
            /*for (int i=0; i< readHeader.length; i+=1)
            	System.out.println(readHeader[i]);*/
          

            // header used to write the new file 
            // (same as 'readHeader', but with additional column)
            final String[] writeHeader = new String[readHeader.length + 1];
            System.arraycopy(readHeader, 0, writeHeader, 1, readHeader.length);

            /*for (int i=0; i< writeHeader.length; i+=1)
            	System.out.println(writeHeader[i]);*/

            
            final String newHeader = "RefID";
            writeHeader[writeHeader.length - 21] = newHeader;
            
            /*for (int i=0; i< writeHeader.length; i+=1)
            	System.out.println(writeHeader[i]);*/

          
            
            mapWriter.writeHeader(writeHeader);
            		
            			
            Map<String, String> row;
            int counter = 1;
            while( (row = mapReader.read(readHeader)) != null ) {
            	            	
            	String str = Integer.toString(counter);
                // add your column with desired value
                row.put(newHeader,str);

                mapWriter.write(row, writeHeader);
                
                counter += 1;
               
            

        }}
        finally {
            if( mapReader != null ) {
                mapReader.close();
            }
            if( mapWriter != null ) {
                mapWriter.close();
            }
        }

    


%>
<html>
<body>
<img src="https://adedata.arkansas.gov/App_Resources/img/ade-logo.gif" alt="ADE">
<table border = "2">
<br><br>
<br><h3>The Oyster IR Run input has been successfully created. </h3>
<form action = "runOyster.jsp" method="post"
                        enctype="multipart/form-data">
<input type="submit" value="Run Oyster"/>
</form>

</table>

</body>

</html>



