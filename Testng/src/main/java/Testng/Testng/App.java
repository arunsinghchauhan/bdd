package Testng.Testng;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.testng.annotations.Test;

/**
 * Hello world!
 *
 */
public class App 
{
   
	WebDriver driver;
	
	@Test
	public void checkGecko()
	{   
		System.setProperty("webdriver.gecko.driver", "C:\\Users\\Arun Chauhan\\Downloads\\geckodriver-v0.26.0-win32\\geckodriver.exe");
		driver= new FirefoxDriver();
		driver.get("https://www.schoolmykids.com/");
		
	}
	
	
	
	
	
	
}