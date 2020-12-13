package seleniumqa;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.Select;

public class DropdownFacebook {
	
	public void ddSelect() throws InterruptedException
	{
		System.setProperty("webdriver.chrome.driver", "C:/Users/Arun Chauhan/Downloads/chromedriver_win32/chromedriver.exe");
		WebDriver driver= new ChromeDriver();
	    driver.manage().window().maximize();
		
		driver.get("https://www.facebook.com/");
		Thread.sleep(2000);
		
		WebElement ddDay=driver.findElement(By.id("day"));
		
		WebElement ddMonth=driver.findElement(By.id("month"));
		
		WebElement ddYear= driver.findElement(By.id("year"));
		
		Select Day_obj= new Select(ddDay);
		Day_obj.selectByIndex(8);
		
		Thread.sleep(2000);
		Select Month_obj=new Select(ddMonth);
		Month_obj.selectByValue("12");
		
		Thread.sleep(2000);
		Select Year_obj= new Select(ddYear);
		Year_obj.selectByVisibleText("1994");
	}
	
	public static void main(String[] args) throws InterruptedException {
		DropdownFacebook d= new DropdownFacebook();
		d.ddSelect();
	}

}
