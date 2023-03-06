Description: As a user, I want to log out from account.

Meta:

    @Epic PT-170[Jira-PT-167]
    @group smoketest
    @layout desktop
    @logout
    @Priority 1
    @issueId PT-167

Scenario: Scenario: [Desktop][Logout] Standard logout flow

Given I am on the main application page
When I enter `remployee9` in field located `${userNameXpath}`
When I enter `Default1` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_userProfileButton}` becomes VISIBLE
When I click on element located `${xpathFor_userProfileButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SignOutButtonInProfile}` becomes VISIBLE
When I click on element located `${xpathFor_SignOutButtonInProfile}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_signInButton}` becomes VISIBLE
When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/revoke-token`
Then the response code is equal to '200'
