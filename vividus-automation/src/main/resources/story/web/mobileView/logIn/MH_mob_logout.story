Scenario: [Mobile][Logout] Standard logout flow
Meta:
    @group smoketest
    @layout chrome_phone
    @logout
    @Priority 1

Given I am on the main application page
When I enter `${userName}` in field located `${userNameXpath}`
When I enter `${userPwd}` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_profileButton}` becomes VISIBLE
When I click on element located `${xpathFor_profileButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_signOutButton}` becomes VISIBLE
When I click on element located `${xpathFor_signOutButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_signInButton}` becomes VISIBLE
Then field located `${xpathFor_signInButton}` exists
