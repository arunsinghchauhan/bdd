package PS.Playstore;


import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class PsLogin {
	
	public void login()
	{
	System.setProperty("webdriver.chrome.driver", "C:\\Users\\Arun Chauhan\\Downloads\\chromedriver_win32\\chromedriver.exe");
	WebDriver driver = new ChromeDriver();
	
	driver.get("https://play.google.com/");
	driver.manage().window().maximize();
	
	driver.findElement(By.xpath("(//a[contains(text(),'See more')])[1]")).isDisplayed();
	System.out.println("Assertion of See More button is passed");
	
	//driver.findElement(By.xpath("//a[contains(text(), 'Sign in')]")).click();
	
	//driver.findElement(By.id("gb_70")).click();//sign in
	
	//driver.findElement(By.id("identifierId")).click(); //username
	
	driver.findElement(By.xpath("//span[contains(text(), 'Movies')]")).click();
	
	List <WebElement> list =driver.findElements(By.xpath("//div[@class='LCATme']/span/span[contains(text(),'₹100.00')]"));
	
	//System.out.println(list);
    System.out.println(list.size());
    /*for (WebElement ele:list)
        System.out.println(ele);
*/
    
    //(//div[contains(text(), 'Frozen II')])[2]
    ////c-wiz[@class='zQTmif SSPGKf I3xX3c']//div[@class='T4LgNb']//span[contains(text(), '₹100.00')]  till yet
    
	for(int i=0;i<list.size();i++)
	{
		driver.findElements(By.xpath("//div[@class='LCATme']/span/span[contains(text(),'₹100.00')]"))
	}
	
	
    
	}
	
	
	public static void main(String[] args) {
		PsLogin ps= new PsLogin();
		ps.login();
		
	}

}
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 