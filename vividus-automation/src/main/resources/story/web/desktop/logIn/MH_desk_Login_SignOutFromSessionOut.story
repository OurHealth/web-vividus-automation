!-- Description: As a user, I want to be able to keep my session active while Im browsing the portal, so that I wouldnt have to log in repeatedly

!-- Meta:
!--
!--     @Epic PT-170[Jira-PT-204]
!--     @group critical_path
!--     @layout desktop
!--     @articles
!--     @Priority 2
!-- `	@issueId PT-204


Scenario: [Desktop][Session timeout] Sign out from the session

Given I am on the main application page
When I enter `${userName}` in field located `${userNameXpath}`
When I enter `${userPwd}` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT30S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE
When I wait `PT615S` with `PT310S` polling until element located `${xpathFor_StillWithUsAlertMsg}` becomes VISIBLE
Then the text '${textInStillWithUsPopup}' exists
When I wait until element located `${xpathFor_NoSignOut}` appears
When I click on element located `${xpathFor_NoSignOut}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_signInHeader}` becomes VISIBLE
