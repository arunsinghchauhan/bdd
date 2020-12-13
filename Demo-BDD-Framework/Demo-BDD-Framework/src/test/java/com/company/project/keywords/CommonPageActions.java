package com.company.project.keywords;

import org.openqa.selenium.WebDriver;
import org.testng.Reporter;

import com.company.automation.utilities.PropFileHandler;
import com.thoughtworks.selenium.webdriven.commands.GetTitle;
import com.company.automation.utilities.GenericActions;

public class CommonPageActions extends GenericActions{
	PropFileHandler data=new PropFileHandler();

	public CommonPageActions(WebDriver driver) {
        super(driver, "Common");
    }
	
	public void selectButtonWithName(String ButtonName){
		wait.waitForElementToBeClickable(element("btn_withName", ButtonName));
    	element("btn_withName", ButtonName).click();
    	Reporter.log("I Select Button '" +ButtonName +"'", true);
	}
	
	public void selectButtonWithValue(String ButtonValue){
		wait.waitForElementToBeClickable(element("btn_withValue", ButtonValue));
    	element("btn_withValue", ButtonValue).click();
    	Reporter.log("I Select Button '" +ButtonValue +"'", true);
	}
	
	public void verifyPageTitle(String Title) {
		driver.getTitle().equals(Title);
		Reporter.log("Page Title Is '" +Title +"'", true);
	}
	
	public void selectLink(String LinkName) {
		element("lnk_withName", LinkName).click();
		Reporter.log("I Select Link '" +LinkName +"'", true);
	}
}