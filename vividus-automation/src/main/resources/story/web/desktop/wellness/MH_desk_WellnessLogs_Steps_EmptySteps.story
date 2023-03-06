Description:As a user, I want to be able to record my weight to track my health progress and lifestyle.

Meta:

    @Epic PT-170[MHPF-758]
    @group critical_path
    @layout desktop
    @wellness_logs
    @Priority 2
    @issueId MHPF-758

GivenStories: story/web/desktop/logIn/MH_Login.story

Scenario: [Desktop][Wellness Logs: Steps] Empty Steps

When I click on element located `${xpathFor_menuWellness}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_cmdWelnessLogs}` becomes VISIBLE
When I click on element located `${xpathFor_cmdWelnessLogs}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerWellnessLogs}` becomes VISIBLE

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_stepsSection}` becomes VISIBLE
When I click on element located `${xpathFor_stepsSection}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordStepsInDashboard}` becomes VISIBLE
When I click on element located `${xpathFor_recordStepsInDashboard}`

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordStepsPopup}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_enterSteps}` becomes VISIBLE
When I enter `5000` in field located `${xpathFor_enterSteps}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RecordStepsButtonInpopup}` becomes VISIBLE
When I click on element located `${xpathFor_RecordStepsButtonInpopup}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordStepsPopup}` becomes NOT_VISIBLE

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_NewRecordedSteps}` becomes VISIBLE


When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_editIconInRecentlyRecordedSteps}` becomes VISIBLE
When I click on element located `${xpathFor_editIconInRecentlyRecordedSteps}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordStepsPopup}` becomes VISIBLE

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_enterDateInRecordSteps}` becomes VISIBLE

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_enteredStepsInRecordSteps}` becomes VISIBLE

When I clear field located `${xpathFor_enterSteps}` using keyboard
When I enter `10000` in field located `${xpathFor_enterSteps}`
When I click on element located `${xpathFor_cancelButtonInRecordsSteps}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordStepsPopup}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_updatedStepsInRecordSteps}` becomes NOT_VISIBLE

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_editIconInRecentlyRecordedSteps}` becomes VISIBLE
When I click on element located `${xpathFor_editIconInRecentlyRecordedSteps}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordStepsPopup}` becomes VISIBLE
When I enter `10000` in field located `${xpathFor_enterSteps}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RecordStepsButtonInpopup}` becomes VISIBLE
When I click on element located `${xpathFor_RecordStepsButtonInpopup}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_updatedStepsInRecordSteps}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_deleteIconInRecentlyRecordedSteps}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_deleteIconInRecentlyRecordedSteps}` becomes ENABLED
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_StepsEntryRecordedMsg}` becomes NOT_VISIBLE

When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_recordStepsPopup}` becomes NOT_VISIBLE



When I click on element located `${xpathFor_deleteIconInRecentlyRecordedSteps}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_updatedStepsInRecordSteps}` becomes NOT_VISIBLE
