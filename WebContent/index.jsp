<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>

<script type="text/javascript">
function validate(){
	if(document.getElementById("filePathId").value == "" ) {
        alert("You have to upload a text or comma separated value file! !");
        return false;}

    else {

        var value = document.getElementById("filePathId").value;
            ext = value.split(".").pop();
        if ( ext == "txt" || ext =="csv") {
            return true; }
        else{
            alert("You can only upload a .txt or .csv file. Retry!");
            return false;}
        }
   }
   </script>

<title>Ad-Hoc Identity Resolution Tool</title>
</head>
<body>
<img src="https://adedata.arkansas.gov/App_Resources/img/ade-logo.gif" alt="ADE">
<h2><font face = "Arial">Ad-Hoc Identity Resolution Tool</font></h2>
<br>
<table border = "4">
<tr>
<td><b><font face = "Arial">File Upload</font></b>
<br>Select input file to upload (.csv only): <br />
<form action="upload.jsp" method="post"
                        enctype="multipart/form-data" onsubmit="javascript: return validate()">
<input type="file" name="file" size="50" id="filePathId" />
<br />
<br>
<input type="submit" value="Upload File" />
</form>
</td>

</tr>

</table>
<br><br><br><br>
<table>
<tr>
            <td><b> Instructions:</b>
            <br>1. Please use Microsoft Excel to convert .xls or .xlsx spreadsheets to .csv format before uploading.
            <br>2. Name of the file to be uploaded has to be "IdentityResolutionTest.csv" 
            <br>3. The first 6 columns of the data-set should be as follows: 
            <br>&nbsp;&nbsp;&nbsp;&nbsp;FirstName <br>&nbsp;&nbsp;&nbsp;&nbsp;MiddleName <br>&nbsp;&nbsp;&nbsp;&nbsp;LastName <br>&nbsp;&nbsp;&nbsp;&nbsp;SSN <br>&nbsp;&nbsp;&nbsp;&nbsp;DOB <br>&nbsp;&nbsp;&nbsp;&nbsp;Gender 
            <br>4. Please ensure that these attribute names are spelled exactly as mentioned here and are in the same sequence as above. 
            <br>5. If your data-set has additional attributes, they can follow after the above mentioned attributes. 
            
            
             </td>
      </tr>

</table>





</body>
</html>