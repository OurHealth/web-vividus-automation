Description: As an adult user, I want to prevent my underaged dependents ,children from accessing the portal to avoid irresponsible activity and be in charge of their healthcare

Scenario: [Mobile][Sign in] Error for underage users

Meta:

    @Epic PT-170[Jira-PT-258]
    @group critical_path
    @layout chrome_phone
    @login
    @Priority 1

Given I am on the main application page
When I wait until element located `${xpathFor_signInHeader}` contains text 'Sign In'
When I enter `<empName>` in field located `${userNameXpath}`
When I enter `<empPwd>` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_underAgedSignInError}` becomes VISIBLE
Then the text '<text>' exists

Examples:
|empName	|empPwd		|text				|
|rchild1	|Default1	|Sorry, you must be over 18 to sign in.	|
