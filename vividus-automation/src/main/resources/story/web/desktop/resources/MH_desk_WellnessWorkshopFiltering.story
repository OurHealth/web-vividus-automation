Description: As a user, I want to be able to have access to other external resources that may be helpful or provide valuable knowledge to my daily healthcare

Meta:

    @Epic PT-645[PT-973]
    @group critical_path
    @layout desktop
    @resources
    @Priority 2
    @issueId PT-973

GivenStories: story/web/desktop/logIn/MH_Login.story

Scenario: [Desktop][Resources] Wellness Workshop - Filtering

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ResourcesMenu}` becomes VISIBLE
When I click on element located `${xpathFor_ResourcesMenu}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_WellnessWorkshopsUnderMenu}` becomes VISIBLE
When I click on element located `${xpathFor_WellnessWorkshopsUnderMenu}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_WellnessWorkshops}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_InProgressIncentivizedWorkshops}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_AsthmaWorkshops}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_AsthmaDesription}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DepressionWorkshops}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DepressionStatusInProg}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_AllergiesWorkshops}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_InProgressIncentivizedWorkshops}` becomes VISIBLE
When I click on element located `${xpathFor_InProgressIncentivizedWorkshops}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CompletedWorkshops}` becomes VISIBLE
When I click on element located `${xpathFor_CompletedWorkshops}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_AnxietyWorkshops}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CompletedStatus}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RESETButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ClickOnCompletedWorkshops}` becomes VISIBLE
When I click on element located `${xpathFor_ClickOnCompletedWorkshops}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_AllAvailableWorkshopsWorkshops}` becomes VISIBLE
When I click on element located `${xpathFor_AllAvailableWorkshopsWorkshops}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_AllergiesWorkshops}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_AnxietyWorkshops}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_AsthmaWorkshops}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DepressionWorkshops}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_userProfileButton}` becomes VISIBLE
When I click on element located `${xpathFor_userProfileButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SignOutButtonInProfile}` becomes VISIBLE
When I click on element located `${xpathFor_SignOutButtonInProfile}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_signInButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_signInHeader}` becomes VISIBLE
When I enter `remployee10` in field located `${userNameXpath}`
When I enter `${userPwd}` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ResourcesMenu}` becomes VISIBLE
When I click on element located `${xpathFor_ResourcesMenu}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_WellnessWorkshopsUnderMenu}` becomes VISIBLE
When I click on element located `${xpathFor_WellnessWorkshopsUnderMenu}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_WellnessWorkshops}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_AllAvailableWorkshopsWorkshopsFilter}` becomes VISIBLE
When I click on element located `${xpathFor_AllAvailableWorkshopsWorkshopsFilter}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CompletedWorkshops}` becomes VISIBLE
When I click on element located `${xpathFor_CompletedWorkshops}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_NoCompletedWorkshopsToDisplayTxtMsg}` becomes VISIBLE
