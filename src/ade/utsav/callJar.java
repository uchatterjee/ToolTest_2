package ade.utsav;
import java.io.File;
import java.io.IOException;


public class callJar {

	//public static void main(String[] args) throws IOException, InterruptedException {
		// TODO Auto-generated method stub
	
		
		//String cmd = "java -jar C:/Oyster/Oyster_v3.3.jar -r C:/Oyster/MergePurgeRunScript.xml";
		

	

	//public static void main(String[] args) throws IOException, InterruptedException {
		// TODO Auto-generated method stub
	
		
		//String cmd = "java -jar C:/Oyster/Oyster_v3.3.jar -r C:/Oyster/MergePurgeRunScript.xml";
		
	
	
	
	public static void callrun() throws IOException {
		// TODO Auto-generated method stub
		String cmd = "java -jar C:\\Oyster3.4\\Oyster_v.3.4.13.jar -r C:\\Oyster3.4\\IdentityResolutionRunScript.xml";
		Runtime.getRuntime().exec(cmd);
	}
	
}
