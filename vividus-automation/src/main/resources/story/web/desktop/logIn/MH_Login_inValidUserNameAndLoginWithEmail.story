Description: As a user, tries with invalid username it should not allow the user to access Marathon Health web application


Meta:

    @Epic PT-170[Jira-PT-191]
    @group smoketest
    @layout desktop
    @login
    @Priority 1
    @issueId PT-191

Scenario: [Desktop][Login] Invalid username and login with email


Given I am on the main application page
When I wait until element located `${xpathFor_signInHeader}` contains text 'Sign In'
When I enter `<invalidUserName>` in field located `${userNameXpath}`
When I enter `<invPwd>` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_incorrectUserPwdMsg}` becomes VISIBLE
When I wait until element located `${xpathFor_signInHeader}` contains text 'Sign In'
When I clear field located `${userNameXpath}` using keyboard
When I enter `<validEmailID>` in field located `${userNameXpath}`
When I clear field located `${pwdXpath}` using keyboard
When I enter `<validPwd>` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_userProfileButton}` becomes VISIBLE
Then the text '<text>' exists
When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/sign-in`
Then the response code is equal to '200'

Examples:
|invalidUserName		|validEmailID					|invPwd		|validPwd	|text			|
|remployee111			|testportal2021+309@gmail.com   |test123	|Default1	|Employee10 React|
