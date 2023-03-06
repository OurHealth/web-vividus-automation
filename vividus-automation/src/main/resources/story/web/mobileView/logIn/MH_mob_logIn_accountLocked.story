Description: | As a user, tries with invalid userName/password it should lock the the user to access after 5 times user has to unlock it to log in again to Marathon Health web application in mobile view

Scenario: Scenario: [Mobile][Login] Account Locked

Meta:

    @Epic PT-170[Jira-PT-248/193]
    @group critical_path
    @layout chrome_phone
    @login
    @Priority 1

Given I am on the main application page
When I wait until element located `${xpathFor_signInHeader}` contains text '${text_SignIn}'
When I enter `<validUser>` in field located `${userNameXpath}`
When I clear field located `${pwdXpath}` using keyboard
When I enter `<invPwd>` in field located `${pwdXpath}`
When I execute steps with delay 'PT02S' at most 5 times while variable 'var' is = '5':
|step |
|When I click on element located `${xpathFor_signInButton}` |
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_unLockMsg}` becomes VISIBLE
Then the text 'Sign In' exists
When I open URL `https://my.qa.marathon-health.net/api/v1/utils/user/testportal2021+308@gmail.com/unlock` in new window
When I close the current window
When I wait until element located `${xpathFor_signInHeader}` contains text 'Sign In'
When I clear field located `${userNameXpath}` using keyboard
When I enter `<validUser>` in field located `${userNameXpath}`
When I clear field located `${pwdXpath}` using keyboard
When I enter `<validPwd>` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_profileButton}` becomes VISIBLE
When I click on element located `${xpathFor_profileButton}`
When I wait until element located `${xpathFor_mobProfileSideMenu}` contains text '<text1>'
Then the text '<text1>' exists

Examples:
|validUser				|invPwd		|validPwd|text1			 |	text			|
|remployee9				|Defa1234	|Default1|Employee9 React|	Please wait 30 minutes or call our Member Relations Team to unlock your account.|
