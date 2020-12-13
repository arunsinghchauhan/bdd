$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("1_LoginPage.feature");
formatter.feature({
  "line": 1,
  "name": "1. Login Features",
  "description": "",
  "id": "1.-login-features",
  "keyword": "Feature"
});
formatter.scenario({
  "line": 4,
  "name": "Login",
  "description": "",
  "id": "1.-login-features;login",
  "type": "scenario",
  "keyword": "Scenario",
  "tags": [
    {
      "line": 3,
      "name": "@Login"
    }
  ]
});
formatter.step({
  "line": 5,
  "name": "I Launch Application URL",
  "keyword": "Given "
});
formatter.step({
  "line": 6,
  "name": "I Login As \"Admin\"",
  "keyword": "When "
});
formatter.match({
  "location": "LoginPageStepDef.LaunchURL()"
});
formatter.result({
  "duration": 8204070232,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "Admin",
      "offset": 12
    }
  ],
  "location": "LoginPageStepDef.LoginIntoApplication(String)"
});
formatter.result({
  "duration": 9271628820,
  "status": "passed"
});
formatter.after({
  "duration": 482374,
  "status": "passed"
});
formatter.uri("2_Dashboard.feature");
formatter.feature({
  "line": 1,
  "name": "2. Dashboard Features",
  "description": "",
  "id": "2.-dashboard-features",
  "keyword": "Feature"
});
formatter.scenario({
  "line": 4,
  "name": "Create a new user",
  "description": "",
  "id": "2.-dashboard-features;create-a-new-user",
  "type": "scenario",
  "keyword": "Scenario",
  "tags": [
    {
      "line": 3,
      "name": "@Dashboard"
    }
  ]
});
formatter.step({
  "line": 5,
  "name": "I verify page title is \"framework | Home\"",
  "keyword": "Given "
});
formatter.step({
  "line": 6,
  "name": "I select link \"Add user\"",
  "keyword": "When "
});
formatter.match({
  "arguments": [
    {
      "val": "framework | Home",
      "offset": 24
    }
  ],
  "location": "CommonPageStepDef.VerifyPageTitle(String)"
});
formatter.result({
  "duration": 9472991,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "Add user",
      "offset": 15
    }
  ],
  "location": "CommonPageStepDef.selectLink(String)"
});
formatter.result({
  "duration": 3101295268,
  "status": "passed"
});
formatter.after({
  "duration": 226238,
  "status": "passed"
});
});