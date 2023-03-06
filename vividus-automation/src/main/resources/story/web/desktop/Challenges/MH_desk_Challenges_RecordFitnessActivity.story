Description: As a user, I want to be able to review my active challenges to keep track of my progress and timeframes.

Meta:

    @Epic PT-645[PT-904]
    @group smoketest
    @layout desktop
    @challenges
    @Priority 1
    @issueId PT-904

GivenStories: story/web/desktop/logIn/MH_Login.story

Scenario: [Desktop][Challenges] Record Fitness Activity

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_menuWellness}` becomes VISIBLE
When I click on element located `${xpathFor_menuWellness}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_cmdChallenges}` becomes VISIBLE
When I click on element located `${xpathFor_cmdChallenges}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ActiveChallengesHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ExerciseChallengeForAutomationTeam}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ExerciseChallangeRegisterButton}` becomes VISIBLE
When I click on element located `${xpathFor_ExerciseChallangeRegisterButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ChooseOrCreateTeamPopup}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CreateYourOwnTeam}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RegisterForATeam}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SelectATeamdropdown}` becomes VISIBLE
When I click on element located `${xpathFor_SelectATeamdropdown}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TestTeamFromDropDown}` becomes VISIBLE
When I click on element located `${xpathFor_TestTeamFromDropDown}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SaveButton}` becomes VISIBLE
When I click on element located `${xpathFor_SaveButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SaveButton}` becomes VISIBLE
When I click on element located `${xpathFor_SaveButton}`
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
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RecordFitnessActivityButtonInPopupChallanges}` becomes VISIBLE
When I click on element located `${xpathFor_RecordFitnessActivityButtonInPopupChallanges}`
When I wait `PT30S` with `PT05S` polling until element located `${xpathFor_TeamProgressInExerciseChallange}` becomes VISIBLE

When I wait until state of element located `${xpathFor_ViewWellnessLogsInFitnessActivity}` is ENABLED
When I wait `PT120S` with `PT60S` polling until element located `${xpathFor_ViewWellnessLogsInFitnessActivity}` becomes VISIBLE
When I click on element located `${xpathFor_ViewWellnessLogsInFitnessActivity}`



When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_fitnessActivityInDashboard}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_recentlyRecordedRunning}` becomes VISIBLE
When I navigate back
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ActiveChallengesHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UnregisterButtonInExerciseChallenge}` becomes VISIBLE
When I click on element located `${xpathFor_UnregisterButtonInExerciseChallenge}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_YesUnregisterInpopup}` becomes VISIBLE
When I click on element located `${xpathFor_YesUnregisterInpopup}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UnregisterButtonInExerciseChallenge}` becomes NOT_VISIBLE
