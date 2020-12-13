package Testng.Testng;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.annotations.Parameters;
import org.testng.annotations.Test;

public class GoogleSearch {
	
	
	WebDriver driver;
	
	@Test
	@Parameters({"browser","url", "username", "password"})
	
	public void yahooLogin(String browser,String url, String username, String password) throws InterruptedException
	{
		if(browser.equals("chrome"))
		{
		System.setProperty("webdriver.chrome.driver", "C:\\Users\\Arun Chauhan\\Downloads\\chromedriver_win32\\chromedriver.exe");
		driver= new ChromeDriver();
		}
		else if(browser.equals("firefox"))
		{
			System.setProperty("webdriver.gecko.driver", "C:\\Users\\Arun Chauhan\\Downloads\\geckodriver-v0.20.1-win32\\geckodriver.exe");
			driver= new FirefoxDriver();
		}
		driver.manage().window().maximize();
		
		driver.get(url);
		
		driver.findElement(By.id("login-username")).sendKeys(username);
		Thread.sleep(2000);

		driver.findElement(By.id("login-signin")).click();
		
		Thread.sleep(2000);
		
		driver.findElement(By.id("login-passwd")).sendKeys(password);
        new WebDriverWait(driver, 20).until(ExpectedConditions.elementToBeClickable(By.name("verifyPassword"))).click();

		//driver.findElement(By.name("verifyPassword")).click();

		
		
	}
	
	

}