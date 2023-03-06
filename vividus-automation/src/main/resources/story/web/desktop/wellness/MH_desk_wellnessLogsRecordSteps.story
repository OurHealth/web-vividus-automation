Description:As a user, I want to be able to record my steps to track my health progress and lifestyle.

Meta:

    @Epic PT-170[PT-435]
    @group critical_path
    @layout desktop
    @wellness_logs
    @Priority 2
   @issueId PT-435

GivenStories: story/web/desktop/logIn/MH_Login.story

Scenario: [Desktop][Wellness Logs: Steps] Record steps

When I click on element located `${xpathFor_menuWellness}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_cmdWelnessLogs}` becomes VISIBLE
When I click on element located `${xpathFor_cmdWelnessLogs}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerWellnessLogs}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_fitnessActivity}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_stepsSection}` becomes VISIBLE
When I click on element located `${xpathFor_stepsSection}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordStepsInDashboard}` becomes VISIBLE
When I click on element located `${xpathFor_recordStepsInDashboard}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_enterSteps}` becomes VISIBLE
When I enter `5000` in field located `${xpathFor_enterSteps}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RecordStepsButtonInpopup}` becomes VISIBLE
When I click on element located `${xpathFor_RecordStepsButtonInpopup}`
When I wait until an alert disappears
When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/wellness/WellnessLog/save-steps`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_stepsRecorded}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_editIconInRecentlyRecordedSteps}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_deleteIconInRecentlyRecordedSteps}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_stepsRecorded}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordedOn}` becomes VISIBLE
When I click on element located `${xpathFor_editIconInRecentlyRecordedSteps}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_enterSteps}` becomes VISIBLE
When I enter `7777` in field located `${xpathFor_enterSteps}`
When I click on element located `${xpathFor_cancelButtonInRecordsSteps}`
When I wait until an alert disappears
Then the text '7777' does not exist
When I click on element located `${xpathFor_editIconInRecentlyRecordedSteps}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_enterSteps}` becomes VISIBLE
When I enter `9999` in field located `${xpathFor_enterSteps}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RecordStepsButtonInpopup}` becomes VISIBLE
When I click on element located `${xpathFor_RecordStepsButtonInpopup}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_updatedStepsRecorded}` becomes VISIBLE


When I wait `PT60S` with `PT10S` polling until element located `${xpathFor_deleteIconInRecentlyRecordedSteps}` becomes ENABLED
When I wait `PT60S` with `PT10S` polling until element located `${xpathFor_deleteIconInRecentlyRecordedSteps}` becomes VISIBLE

When I wait `PT60S` with `PT10S` polling until element located `${xpathFor_Steps}` becomes VISIBLE

When I wait until element located `${xpathFor_deleteIconInRecentlyRecordedSteps}` appears
When I click on element located `${xpathFor_deleteIconInRecentlyRecordedSteps}`



When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_updatedStepsRecorded}` becomes NOT_VISIBLE
