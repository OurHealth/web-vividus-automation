Description: As a user, I want to be able to view my goals and accomplishments and report self-reported achievements to see what reward I am entitled to and where I can contribute more |


Meta:

    @Epic PT-645[PT-1009]
    @group critical_path
    @layout desktop
    @incentives
    @Priority 2
    @issueId PT-1009

Scenario: [Desktop][Incentives] Group Goal

Given I am on the main application page
When I wait until element located `${xpathFor_signInHeader}` contains text 'Sign In'
When I enter `remployee8` in field located `${userNameXpath}`
When I enter `${userPwd}` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE
When I click on element located `${xpathFor_menuWellness}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_IncentivesUnderWellnessInDesk}` becomes VISIBLE
When I click on element located `${xpathFor_IncentivesUnderWellnessInDesk}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_IncentivesHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_AnxiousGroup}` becomes VISIBLE
When I click on element located `${xpathFor_AnxiousGroup}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_AnxiousGroupTitle}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ScheduleAppointment}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TitleDependsOnConfirmedSuccessOf}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_GoToWellnessWorkshops}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_GetAnxiousToRidOfAnxiety}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RewardsForGetAnxiousToRidOfAnxiety}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CheckForAnxiousBehavior}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RewardsForCheckForAnxiousBehavior}` becomes VISIBLE
When I click on element located `${xpathFor_GetAnxiousToRidOfAnxiety}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_GetAnxiousToRidOfAnxietyTitle}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_xpathFor_GetAnxiousToRidOfAnxietyDescription}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_GoToWellnessWorkshops}` becomes VISIBLE
When I click on element located `${xpathFor_GoToWellnessWorkshops}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Anxiety}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BackToIncentives}` becomes VISIBLE
When I click on element located `${xpathFor_BackToIncentives}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_AnxiousGroup}` becomes VISIBLE
When I click on element located `${xpathFor_AnxiousGroup}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CheckForAnxiousBehavior}` becomes VISIBLE
When I click on element located `${xpathFor_CheckForAnxiousBehavior}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CheckForAnxiousBehaviorTitle}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_xpathFor_CheckForAnxiousBehaviorDescription}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ScheduleAppointment}` becomes VISIBLE
When I click on element located `${xpathFor_ScheduleAppointment}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_IfEmergencyPlsCall191Popup}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ContinueScheduling}` becomes VISIBLE
When I click on element located `${xpathFor_ContinueScheduling}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ScheduleANewAppointment}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_PrefilledEmployee8}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BehavioralHealth}` becomes VISIBLE
