package ade.utsav;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Map;

import org.supercsv.io.CsvMapReader;
import org.supercsv.io.CsvMapWriter;
import org.supercsv.io.ICsvMapReader;
import org.supercsv.io.ICsvMapWriter;
import org.supercsv.prefs.CsvPreference;

public class Example {

    public static void main(String[] args) throws IOException {

        ICsvMapReader mapReader = null;
        ICsvMapWriter mapWriter = null;
        try {
            CsvPreference prefs = CsvPreference.STANDARD_PREFERENCE;
            mapReader = new CsvMapReader(new FileReader("C:\\Users\\uchatterjee\\workspace\\ToolTest_2\\data\\IdentityResolutionTest.csv"), prefs);
            mapWriter = new CsvMapWriter(new FileWriter("C:\\Users\\uchatterjee\\workspace\\ToolTest_2\\data\\oysterInput.csv"), prefs);

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

    }

}