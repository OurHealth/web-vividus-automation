Description: As a user, I want to be able to access the WP using my own credentials to be identified and enter my personally customized space


Meta:

    @Epic PT-170[Jira-184]
    @group smoketest
    @layout desktop
    @login
    @Priority 1
    @issueId PT-184

Scenario: [Desktop][Login] Successful login


Given I am on the main application page
When I change window size to `1280x720`
When I wait until element located `${xpathFor_signInHeader}` contains text '${text_SignIn}'
When I enter `${userName}` in field located `${userNameXpath}`
When I enter `${userPwd}` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_userProfileButton}` becomes VISIBLE
When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/revoke-token`
Then the response code is equal to '200'
