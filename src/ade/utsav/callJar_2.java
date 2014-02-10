package ade.utsav;

import java.io.BufferedReader;
import java.lang.*;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.*;

/*public class callJar_2 {

	public static void main(String[] args) throws IOException {
		String s = null;
	}

public void argMethod() throws IOException{
		String jarPath = "C:\\Oyster3.4\\Oyster_v.3.4.13.jar";
		String scriptPath = "C:\\Oyster3.4\\IdentityResolutionRunScript.xml";
		String args1[] = {"java", "-jar", jarPath, "-r", scriptPath};
		ProcessBuilder pb = new ProcessBuilder(args1);
		Process p = pb.start();
		System.out.print("start run");
	
	}

}*/
/*public class callJar_2 implements Runnable{
	String s = null;
	
	public void threadMethod(int x){
		x = 5000;
		
	}
	public void run(){
		try {
			Process p = Runtime.getRuntime().exec("java -jar C:\\Oyster3.4\\Oyster_v.3.4.13.jar -r C:\\Oyster3.4\\IdentityResolutionRunScript.xml");
			Thread.sleep(5000);

			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	

	
}*/

class callJar_2 implements Runnable {
	public void run(){
		try {
			Process p = Runtime.getRuntime().exec("java -jar C:\\Oyster3.4\\Oyster_v.3.4.13.jar -r C:\\Oyster3.4\\IdentityResolutionRunScript.xml");
			Thread.sleep(5000);

			
		} catch (Exception e) {
		}
		callJar_2 cj = new callJar_2();
		cj.run();
	}


	  public static void main(String []arg) {
		  callJar_2 th=new callJar_2();
	    Thread t1 = new Thread(th);
	    t1.setDaemon(true);
	    t1.start();
	    
	    System.out.println(t1.isDaemon());
	  }
	  
	  
	}


