package stepDefinitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class StepDefs_GoogleHomepage {

	@Given("^I launch the Chrome browser$")
	public void launchChromeBrowser()
	{
		System.out.println("Launch Chrome");
	}
	
	@When("^I open Google Homepage$")
	public void OpenGoogleHomepage()
	{
		System.out.println("Open Google Homepage");
	}
	
	@Then("^I verify that the page displayed search text box$")
	public void DisplayedSearchTextBox()
	{
		System.out.println("Check Search Text Box");
	}
	
	@And("^the page displayed Google Search Button$")
	public void DisplayedGoogleSearchButton()
	{
		System.out.println("Check Google Search Button");
	}
	
	@And("^the page displayed Im feeling Lucky button$")
	public void DisplayedImFeelingLuckyButton()
	{
		System.out.println("Check Im Feeling Lucky Button");
	}
	
	
	
}
