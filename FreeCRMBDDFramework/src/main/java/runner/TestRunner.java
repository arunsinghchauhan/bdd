package runner;

import org.junit.runner.RunWith;
import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(
		feature="Feature"
		.glue= {"stepdefinition"}
		)

public class TestRunner {

	
}
