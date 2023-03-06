!-- Description: As a user, I want to be able to keep my session active while Im browsing the portal, so that I wouldnt have to log in repeatedly



!-- Meta:
!--
!--     @Epic PT-170[Jira-183]
!--     @group smoketest
!--     @layout desktop
!--     @logIn
!--     @Priority 1
!--     @issueId PT-191

Scenario: [Desktop] [Session timeout] Session timeout popup - extend session

Given I am on the main application page

When I enter `${userName}` in field located `${userNameXpath}`
When I enter `${userPwd}` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE
When I wait `PT605S` with `PT300S` polling until element located `${xpathFor_StillWithUsAlertMsg}` becomes VISIBLE
When I click on element located `${xpathFor_homeButton}`
Then the text 'Due to inactivity your session is about to expire. Do you want to extend your session?' exists
When I wait until element located `${xpathFor_ExtendSessionButton}` appears
When I click on element located `${xpathFor_ExtendSessionButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE
