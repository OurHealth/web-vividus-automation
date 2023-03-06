Description: As a user, I want to be able to keep my session active while Im browsing the portal, so that I wouldn�t have to log in repeatedly



Meta:

    @Epic PT-170[Jira-PT-204]
    @group smoketest
    @layout chrome_phone
    @critical_path
    @session_refresh
    @Priority 1


Scenario: [Mobile] [Session timeout] Session timeout popup - extend session

Given I am on the main application page
When I enter `${userName}` in field located `${userNameXpath}`
When I enter `${userPwd}` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I scroll context to TOP edge
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobHamburgerMenuIcon}` becomes VISIBLE
When I wait `PT610S` with `PT305S` polling until element located `${xpathFor_StillWithUsAlertMsg}` becomes VISIBLE
Then the text '${textInStillWithUsPopup}' exists
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ExtendSessionButton}` becomes VISIBLE
When I click on element located `${xpathFor_ExtendSessionButton}`
When I scroll context to TOP edge
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobHamburgerMenuIcon}` becomes VISIBLE
