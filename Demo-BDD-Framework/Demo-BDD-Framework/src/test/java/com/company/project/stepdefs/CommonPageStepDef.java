package com.company.project.stepdefs;

import static com.company.project.stepdefs.RunnerTest.test;
import cucumber.api.java.en.And;

public class CommonPageStepDef {

	 @And("^I Select Button With Name \"([^\"]*)\"$")
	 public void SelectButtonWithName(String ButtonName) {		 
		 test.common.selectButtonWithName(ButtonName);
	 }
	 
	 @And("^I Select Button With Value \"([^\"]*)\"$")
	 public void SelectButtonWithValue(String ButtonValue) {		 
		 test.common.selectButtonWithValue(ButtonValue);
	 }
	 
	 @And("^I verify page title is \"([^\"]*)\"$")
	 public void VerifyPageTitle(String Title) {		 
		 test.common.verifyPageTitle(Title);
	}
	
	@And("^I select link \"([^\"]*)\"$")
	 public void selectLink(String LinkName) {
		test.common.selectLink(LinkName);
	}
}