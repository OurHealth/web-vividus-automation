Description: As a patient/user, I want to be entitled to incentive programs and monitor my status/progress to enjoy bonuses and enhanced patient/user experience
Meta:

    @Epic PT-645[PT-984]
    @group extended
    @layout desktop
    @incentives
    @Priority 3
    @issueId PT-984

Scenario: [Desktop][Incentives] No active incentive, but historic are available

Given I am on the main application page
When I wait until element located `${xpathFor_signInHeader}` contains text 'Sign In'
When I enter `employeetest` in field located `${userNameXpath}`
When I enter `${userPwd}` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_EmployeeTestProfileMenu}` becomes VISIBLE
When I click on element located `${xpathFor_EmployeeTestProfileMenu}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ViewAsCityOfCharlotte}` becomes VISIBLE
When I click on element located `${xpathFor_ViewAsCityOfCharlotte}`
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_HowCanWeHelpYouTodayInHomePage}` becomes VISIBLE
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_menuWellness}` becomes VISIBLE
When I click on element located `${xpathFor_menuWellness}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_IncentivesUnderWellnessInDesk}` becomes VISIBLE
When I click on element located `${xpathFor_IncentivesUnderWellnessInDesk}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_IncentivesHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_NoActiveIncentiveProgramsToDisplay}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_YouCanViewHistoricalIncentivePrograms}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_2018CityOfCharlotteList2}` becomes VISIBLE
When I click on element located `${xpathFor_2018CityOfCharlotteList2}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TitleCityOfCharlotte}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HistoricalIncentiveBanner}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ExitHistoricalProgramLink}` becomes VISIBLE
When I click on element located `${xpathFor_ExitHistoricalProgramLink}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_IncentivesHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_2018CityOfCharlotteList2}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_EmployeeTestProfileMenu}` becomes VISIBLE
When I click on element located `${xpathFor_EmployeeTestProfileMenu}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_viewAsDemoEmp}` becomes VISIBLE
When I click on element located `${xpathFor_viewAsDemoEmp}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_EmployeeTestProfileMenu}` becomes VISIBLE
When I click on element located `${xpathFor_EmployeeTestProfileMenu}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_viewingAsDemoEmp}` becomes VISIBLE
