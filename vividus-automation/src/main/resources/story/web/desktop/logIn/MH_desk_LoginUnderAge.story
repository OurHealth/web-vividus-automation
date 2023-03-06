Description: As an adult user, I want to prevent my underaged dependents, children from accessing the portal to avoid irresponsible activity and be in charge of their healthcare


Meta:

    @Epic PT-170[Jira-PT-257]
    @group critical_path
    @layout desktop
    @login
    @Priority 2
    @issueId PT-257

Scenario: [Desktop][Sign in] Error for underage users

Given I am on the main application page
When I wait until element located `${xpathFor_signInHeader}` contains text '${text_SignIn}'
When I enter `<empName>` in field located `${userNameXpath}`
When I enter `<empPwd>` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_underAgedSignInError}` becomes VISIBLE
Then the text '${underAgedSignInError}' exists
When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/sign-in`
Then the response code is equal to '200'
Then JSON element from `
{
   "error_code": "not_old_enough"
}
` by JSON path `$.error_code` is equal to `not_old_enough`

Examples:
|empName	|empPwd		|text									|
|rchild1	|Default1	|Sorry, you must be over 18 to sign in.	|
