package demo;

import org.openqa.selenium.By;
import org.openqa.selenium.By.ById;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

public class TestFacebookRegistrationPage {

	public static void main(String[] args) throws InterruptedException {
		System.setProperty("webdriver.chrome.driver", "C:\\Users\\Arun Chauhan\\Downloads\\chromedriver_win32\\chromedriver.exe");
		WebDriver driver= new ChromeDriver();
		driver.manage().window().maximize();
		driver.get("https://www.facebook.com");
		
		driver.findElement(ById.id("email")).sendKeys("9654888946");
		driver.findElement(ById.id("pass")).sendKeys("9654888946");
		
		driver.findElement(ById.id("loginbutton")).click();
		Thread.sleep(2000);
		
		driver.findElement(ById.id("logoutMenu")).click();
		Thread.sleep(1000);
		driver.findElement(By.xpath("//*[@class='_54ni navSubmenu _6398 _64kz __MenuItem']]")).click();
		
	}

}
