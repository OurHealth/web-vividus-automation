!-- Description: As a user, I want to be able to keep my session active while Im browsing the portal, so that I wouldnt have to log in repeatedly



!-- Meta:
!--
!--     @Epic PT-170[Jira-PT-207]
!--     @group extended
!--     @layout desktop
!--     @session_refresh
!--     @Priority 3
!--    @issueId PT-207

Scenario: [Desktop] [Session timeout] Session timeout popup - extend session

Given I am on the main application page
When I enter `<empName>` in field located `${userNameXpath}`
When I enter `<empPwd>` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE
When I wait `PT605S` with `PT300S` polling until element located `${xpathFor_StillWithUsAlertMsg}` becomes VISIBLE
Then the text '${textInStillWithUsPopup}' exists
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ExtendSessionButton}` becomes VISIBLE
When I click on element located `${xpathFor_ExtendSessionButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE
When I click on element located `${xpathFor_homeButton}`
When I wait `PT605S` with `PT300S` polling until element located `${xpathFor_StillWithUsAlertMsg}` becomes VISIBLE

Examples:
|empName	|empPwd		|
|remployee8	|Default1	|
