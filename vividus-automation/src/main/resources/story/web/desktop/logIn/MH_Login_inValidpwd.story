Description: As a user, tries with invalid password it should not allow the user to access Marathon Health web application in desktop view


Meta:

    @Epic PT-170[Jira-PT-193]
    @group smoketest
    @layout desktop
    @login
    @Priority 1
    @issueId PT-193

Scenario: [Desktop][Login] Account Locked


Given I am on the main application page
When I wait until element located `${xpathFor_signInHeader}` contains text 'Sign In'
When I enter `<validUser>` in field located `${userNameXpath}`
When I enter `<invPwd>` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_invalidUserPwdMsg}` becomes VISIBLE
Then the text 'Sign In' exists
Then JSON element from `
{
   "error_code": "failed_login"
}
` by JSON path `$.error_code` is equal to `failed_login`
Examples:
|validUser				|invPwd					|text			|
|remployee2				|Defa1234				|Your password or username is incorrect|
