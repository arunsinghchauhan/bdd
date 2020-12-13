package com.amazon.com.demo.maven.amazon;


import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.testng.annotations.Test;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.AfterTest;

public class HomePageTest {
	WebDriver driver;

	
  @BeforeTest
  public void beforeTest() {
   //System.setProperty("webdriver.gecko.driver", "C:\\Users\\Arun Chauhan\\Downloads\\geckodriver-v0.15.0-win32\\geckodriver.exe");
  //download geckodriver
      driver= new FirefoxDriver();
	  driver.get("http://www.amazon.in/");
	 
  }
  
  @Test
  public void f() {
  }

  @AfterTest
  public void afterTest() {
	  driver.close();
  }

}
