Description:As a user, I want to be able to record my sleep to track my health progress and lifestyle.
Meta:

    @Epic PT-170[PT-481]
    @group critical_path
    @layout desktop
    @wellness_logs
    @Priority 2
    @issueId PT-481

GivenStories: story/web/desktop/logIn/MH_Login.story

Scenario: [Desktop][Wellness Logs: Sleep] Record sleep

When I click on element located `${xpathFor_menuWellness}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_cmdWelnessLogs}` becomes VISIBLE
When I click on element located `${xpathFor_cmdWelnessLogs}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerWellnessLogs}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_fitnessActivity}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sleepSection}` becomes VISIBLE
When I click on element located `${xpathFor_sleepSection}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sleepHeaderInRightPane}` becomes VISIBLE
When I click on element located `${xpathFor_recordSleepInDashboard}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordSleepPopup}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_enterHours}` becomes VISIBLE
When I enter `07` in field located `${xpathFor_enterHours}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_enterMinutes}` becomes VISIBLE
When I enter `30` in field located `${xpathFor_enterMinutes}`
When I click on element located `${xpathFor_RecordSleepButtonInPopup}`
When I wait until an alert disappears
When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/wellness/WellnessLog/save-sleep`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recentlyRecorderSleep}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordedInfoSleep}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_editIconInRecentlyRecordedSteps}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_deleteIconInRecentlyRecordedSteps}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mostRecentlySectionInSleep}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sleepTimeInSleepSection}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recorderOnBySelfInSleepSection}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_editIconInRecentlyRecordedSteps}` becomes VISIBLE
When I click on element located `${xpathFor_editIconInRecentlyRecordedSteps}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordSleepPopup}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_enterHours}` becomes VISIBLE
When I enter `09` in field located `${xpathFor_enterHours}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_enterMinutes}` becomes VISIBLE
When I enter `10` in field located `${xpathFor_enterMinutes}`
When I click on element located `${xpathFor_cancelButtonInRecordsSteps}`
When I wait until an alert disappears
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recentlyRecorderSleep}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_editIconInRecentlyRecordedSteps}` becomes VISIBLE
When I click on element located `${xpathFor_editIconInRecentlyRecordedSteps}`
When I enter `04` in field located `${xpathFor_enterHours}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_enterMinutes}` becomes VISIBLE
When I enter `30` in field located `${xpathFor_enterMinutes}`
When I click on element located `${xpathFor_RecordSleepButtonInPopup}`
When I wait until an alert disappears
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_updatedRecorderSleep}` becomes VISIBLE
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_deleteIconInRecentlyRecordedSleep}` becomes VISIBLE

When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_deleteIconInRecentlyRecordedSleep}` becomes ENABLED


When I click on element located `${xpathFor_deleteIconInRecentlyRecordedSleep}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_updatedRecorderSleep}` becomes NOT_VISIBLE
