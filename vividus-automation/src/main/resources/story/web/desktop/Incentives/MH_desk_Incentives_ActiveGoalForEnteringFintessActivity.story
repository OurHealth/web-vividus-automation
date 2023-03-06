Description: As a user, I want to be able to view my goals and accomplishments and report self-reported achievements to see what reward I am entitled to and where I can contribute more |


Meta:

    @Epic PT-645[PT-998]
    @group critical_path
    @layout desktop
    @incentives
    @Priority 2
    @issueId PT-998

Scenario: [Desktop][Incentives] Active goal for entering Fintess Activity

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
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DistanceGoal}` becomes VISIBLE
When I click on element located `${xpathFor_DistanceGoal}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DistanceGoalTitle}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordFitnessActivityButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ViewWellnessLogsAsButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RequiredActivity}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TitleDependsOnConfirmedSuccessOf}` becomes NOT_VISIBLE
When I click on element located `${xpathFor_recordFitnessActivityButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordFitnessAvtivityPopup}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ActivityType}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Started}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DateField}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TimeField}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Duration}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_enterHours}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_enterMinutes}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_durationSeconds}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RecordFitnessActivityButtonInPopupChallanges}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CancelButtonInpopup}` becomes VISIBLE
When I click on element located `${xpathFor_CancelButtonInpopup}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordFitnessAvtivityPopup}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordFitnessActivityButton}` becomes VISIBLE
When I click on element located `${xpathFor_recordFitnessActivityButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordFitnessAvtivityPopup}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_activityTypeDropDown}` becomes VISIBLE
When I click on element located `${xpathFor_activityTypeDropDown}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_runningValueFromActivityTypeDropdown}` becomes VISIBLE
When I click on element located `${xpathFor_runningValueFromActivityTypeDropdown}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_durationHours}` becomes VISIBLE
When I enter `2` in field located `${xpathFor_durationHours}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_durationMinutes}` becomes VISIBLE
When I enter `15` in field located `${xpathFor_durationMinutes}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_durationSeconds}` becomes VISIBLE
When I enter `30` in field located `${xpathFor_durationSeconds}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_distanceMiles}` becomes VISIBLE
When I enter `10` in field located `${xpathFor_distanceMiles}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RecordFitnessActivityButtonInpopupInRecordEntryPopup}` becomes VISIBLE
When I click on element located `${xpathFor_RecordFitnessActivityButtonInpopupInRecordEntryPopup}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordFitnessAvtivityPopup}` becomes NOT_VISIBLE
When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/WellnessLog/save-exercise`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ViewWellnessLogsAsButton}` becomes VISIBLE
When I click on element located `${xpathFor_ViewWellnessLogsAsButton}`
When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_headerWellnessLogs}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_FitnessSelectedFromWellnessLogs}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BackToIncentives}` becomes VISIBLE
