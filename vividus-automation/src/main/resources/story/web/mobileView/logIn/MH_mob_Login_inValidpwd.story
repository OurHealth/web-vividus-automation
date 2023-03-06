Description: | As a user, tries with invalid password it should not allow the user to access Marathon Health web application in mobile view

Scenario: Scenario: [Mobile][Login] Invalid password

Meta:

    @Epic PT-170[Jira-PT-248/194]
    @group smoketest
    @layout chrome_phone
    @login
    @Priority 1

Given I am on the main application page
When I wait until element located `${xpathFor_signInHeader}` contains text 'Sign In'
When I enter `<validUser>` in field located `${userNameXpath}`
When I enter `<invPwd>` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_invalidUserPwdMsg}` becomes VISIBLE
Then the text 'Sign In' exists


Examples:
|validUser				|invPwd					|text								   |
|remployee1				|Defa1234				|Your password or username is incorrect|
