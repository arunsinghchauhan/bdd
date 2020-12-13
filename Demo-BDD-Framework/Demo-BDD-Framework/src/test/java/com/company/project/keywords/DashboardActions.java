package com.company.project.keywords;

import org.openqa.selenium.WebDriver;
import com.company.automation.utilities.GenericActions;
import com.company.automation.utilities.PropFileHandler;

public class DashboardActions extends GenericActions{
	PropFileHandler data=new PropFileHandler();

	public DashboardActions(WebDriver driver) {
        super(driver, "HomePage");		
	}

}
