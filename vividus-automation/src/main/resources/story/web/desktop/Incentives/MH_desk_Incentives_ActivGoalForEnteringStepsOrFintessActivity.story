Description: As a user, I want to be able to view my goals and accomplishments and report self-reported achievements to see what reward I am entitled to and where I can contribute more |


Meta:

    @Epic PT-645[PT-994]
    @group smoketest
    @layout desktop
    @incentives
    @Priority 1
    @issueId PT-994

Scenario: [Desktop][Incentives] Active goal for entering steps or fintess activity

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
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RecordStepsOrMinutes}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RewardsForRecordStepsOrMinutes}` becomes VISIBLE
When I click on element located `${xpathFor_RecordStepsOrMinutes}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RecordStepsOrMinutesTitle}` becomes VISIBLE
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/wellness/incentives?goalId=7096`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BackToAllGoals}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RewardsForRecordStepsOrMinutesInDetailsPage}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DurationInRecordStepsOrMin}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TargetsInRecordStepsOrMin}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DescriptionInRecordStepsOrMin}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RecordEntry}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ViewWellnessLogs}` becomes NOT_VISIBLE
When I click on element located `${xpathFor_RecordEntry}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RecordEntryPopup}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RecordSteps}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordFitnessActivityButtonInPopup}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CancelButtonInpopup}` becomes VISIBLE
When I click on element located `${xpathFor_RecordSteps}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DateField}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TimeField}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_StepsInRecordEntry}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RecordStepsButtonInpopup}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordFitnessActivityButtonInPopupInRecordEntry}` becomes VISIBLE
When I click on element located `${xpathFor_recordFitnessActivityButtonInPopupInRecordEntry}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_activityTypeDropDown}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Started}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DateField}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TimeField}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Duration}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_durationHours}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_durationMinutes}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_durationSeconds}` becomes VISIBLE
When I click on element located `${xpathFor_CancelButtonInpopup}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RecordEntryPopup}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RecordEntry}` becomes VISIBLE
When I click on element located `${xpathFor_RecordEntry}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RecordSteps}` becomes VISIBLE
When I click on element located `${xpathFor_RecordSteps}`
When I enter `111` in field located `${xpathFor_enterSteps}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RecordStepsButtonInpopup}` becomes VISIBLE
When I click on element located `${xpathFor_RecordStepsButtonInpopup}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RecordEntryPopup}` becomes NOT_VISIBLE
When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/WellnessLog/save-steps`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RecordEntry}` becomes VISIBLE
When I click on element located `${xpathFor_RecordEntry}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordFitnessActivityButtonInPopupInRecordEntry}` becomes VISIBLE
When I click on element located `${xpathFor_recordFitnessActivityButtonInPopupInRecordEntry}`
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
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RecordEntryPopup}` becomes NOT_VISIBLE
When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/WellnessLog/save-exercise`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BackToAllGoals}` becomes VISIBLE
When I click on element located `${xpathFor_BackToAllGoals}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DistanceGoal}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_FailedGoalForAutomation}` becomes VISIBLE
