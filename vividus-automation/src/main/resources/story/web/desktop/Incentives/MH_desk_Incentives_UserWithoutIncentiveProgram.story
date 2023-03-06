Description: As a patient/user, I want to be entitled to incentive programs and monitor my status/progress to enjoy bonuses and enhanced patient/user experience
Meta:

    @Epic PT-645[PT-979]
    @group extended
    @layout desktop
    @incentives
    @Priority 3
    @issueId PT-979

Scenario: [Desktop][Incentives] User without Incentive program

Given I am on the main application page
When I wait until element located `${xpathFor_signInHeader}` contains text 'Sign In'
When I enter `remployee1` in field located `${userNameXpath}`
When I enter `${userPwd}` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_userProfileButton}` becomes VISIBLE
When I click on element located `${xpathFor_userProfileButton}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_viewAsAflac}` becomes VISIBLE
When I click on element located `${xpathFor_viewAsAflac}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_textMyIncentivesStatus}` becomes NOT_VISIBLE
When I click on element located `${xpathFor_menuWellness}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_IncentivesUnderWellnessInDesk}` becomes VISIBLE
When I click on element located `${xpathFor_IncentivesUnderWellnessInDesk}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_IncentivesHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_NoActiveIncentiveMsg}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_userProfileButton}` becomes VISIBLE
When I click on element located `${xpathFor_userProfileButton}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_viewAsDemoEmp}` becomes VISIBLE
When I click on element located `${xpathFor_viewAsDemoEmp}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_userProfileButton}` becomes VISIBLE
When I click on element located `${xpathFor_userProfileButton}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_viewingAsDemoEmp}` becomes VISIBLE
