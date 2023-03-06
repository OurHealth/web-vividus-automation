Description: As a user, I want to be able to keep my session active while Im browsing the portal, so that I wouldn�t have to log in repeatedly

Meta:

    @Epic PT-170[Jira-PT-326]
    @group critical_path
    @layout chrome_phone
    @session_refresh
    @Priority 1


Scenario: [Mobile][Session timeout] User is inactive for more than 13 minutes

Given I am on the main application page
When I enter `${userName}` in field located `${userNameXpath}`
When I enter `${userPwd}` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I scroll context to TOP edge
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobHamburgerMenuIcon}` becomes VISIBLE
When I wait `PT605S` with `PT300S` polling until element located `${xpathFor_StillWithUsAlertMsg}` becomes VISIBLE
When I wait `PT185S` with `PT60S` polling until element located `${xpathFor_InactiveSignedoutMsg}` becomes VISIBLE

Examples:
|empName	|empPwd		|text				|
|remployee1	|Default1	|Employee1 React	|
