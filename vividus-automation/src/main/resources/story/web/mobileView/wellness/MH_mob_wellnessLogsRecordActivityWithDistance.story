Description:As a user, I want to be able to record my fitness activities to track my health progress and lifestyle.

Meta:

    @Epic PT-170[PT-500]
    @group critical_path
    @layout chrome_phone
    @wellness_logs
    @Priority 1

GivenStories: story/web/mobileView/logIn/MH_mob_LoginPrecondition.story

Scenario: [Mobile][Wellness Logs: Fitness] Record activity with distance

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobHamburgerMenuIcon}` becomes VISIBLE
When I click on element located `${xpathFor_mobHamburgerMenuIcon}`
When I click on element located `${xpathFor_mobMenuWellness}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobCommandWellnessLogs}` becomes VISIBLE
When I click on element located `${xpathFor_mobCommandWellnessLogs}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerWellnessLogs}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobFitnessSection}` becomes VISIBLE
When I click on element located `${xpathFor_mobFitnessSection}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_fitnessActivityInMobileView}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobRecordActivityButtonInFitnessSec}` becomes VISIBLE
When I click on element located `${xpathFor_mobRecordActivityButtonInFitnessSec}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordFitnessAvtivityPopup}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_activityTypeDropDown}` becomes VISIBLE
When I click on element located `${xpathFor_activityTypeDropDown}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_runningValueFromActivityTypeDropdown}` becomes VISIBLE
When I click on element located `${xpathFor_runningValueFromActivityTypeDropdown}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_distanceSectionInRecordFitnessActivity}` becomes VISIBLE
When I click on element located `${xpathFor_recordFitnessActivityButtonInPopup}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_errorMsgMustIncludeDurationAndDistance}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_durationHours}` becomes VISIBLE
When I enter `2` in field located `${xpathFor_durationHours}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_durationMinutes}` becomes VISIBLE
When I enter `15` in field located `${xpathFor_durationMinutes}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_durationSeconds}` becomes VISIBLE
When I enter `30` in field located `${xpathFor_durationSeconds}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_distanceMiles}` becomes VISIBLE
When I enter `10` in field located `${xpathFor_distanceMiles}`
When I click on element located `${xpathFor_recordFitnessActivityButtonInPopup}`
When I wait until element located `${xpathFor_fitnessEntryRecordedPopupDiv}` disappears
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recentlyRecordedRunning}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_editIconInRecentlyRecordedSteps}` becomes VISIBLE
When I click on element located `${xpathFor_editIconInRecentlyRecordedSteps}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordFitnessAvtivityPopup}` becomes VISIBLE
When I clear field located `${xpathFor_durationHours}` using keyboard
When I clear field located `${xpathFor_durationMinutes}` using keyboard
When I clear field located `${xpathFor_durationSeconds}` using keyboard
When I click on element located `${xpathFor_recordFitnessActivityButtonInPopup}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recentlyRecordedRunningAfterRemoveDuration}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_editIconInRecentlyRecordedSteps}` becomes VISIBLE
When I click on element located `${xpathFor_editIconInRecentlyRecordedSteps}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordFitnessAvtivityPopup}` becomes VISIBLE
When I clear field located `${xpathFor_distanceMiles}` using keyboard
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_durationHours}` becomes VISIBLE
When I enter `2` in field located `${xpathFor_durationHours}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_durationMinutes}` becomes VISIBLE
When I enter `15` in field located `${xpathFor_durationMinutes}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_durationSeconds}` becomes VISIBLE
When I enter `30` in field located `${xpathFor_durationSeconds}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_distanceMiles}` becomes VISIBLE
When I click on element located `${xpathFor_recordFitnessActivityButtonInPopup}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recentlyRecordedRunningAfterRemoveDistance}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_deleteIconInRecentlyRecordedSteps}` becomes VISIBLE
When I click on element located `${xpathFor_deleteIconInRecentlyRecordedSteps}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recentlyRecordedRunningAfterRemoveDistance}` becomes NOT_VISIBLE
