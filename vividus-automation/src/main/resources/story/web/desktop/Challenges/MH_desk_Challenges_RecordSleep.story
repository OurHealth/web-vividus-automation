Description: As a user, I want to be able to review my active challenges to keep track of my progress and timeframes.

Meta:

    @Epic PT-645[PT-910]
    @group critical_path
    @layout desktop
    @challenges
    @Priority 2
    @issueId PT-910

GivenStories: story/web/desktop/logIn/MH_Login.story

Scenario: [Desktop][Challenges] Record Sleep

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_menuWellness}` becomes VISIBLE
When I click on element located `${xpathFor_menuWellness}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_cmdChallenges}` becomes VISIBLE
When I click on element located `${xpathFor_cmdChallenges}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ActiveChallengesHeader}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_RegisterButtonInSleepChallange}` becomes VISIBLE
When I click on element located `${xpathFor_RegisterButtonInSleepChallange}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SaveButton}` becomes VISIBLE
When I click on element located `${xpathFor_SaveButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordSleepButtonInSleepSection}` becomes VISIBLE
When I click on element located `${xpathFor_recordSleepButtonInSleepSection}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordSleepPopup}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_enterHours}` becomes VISIBLE
When I enter `5` in field located `${xpathFor_enterHours}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_enterMinutes}` becomes VISIBLE
When I enter `5` in field located `${xpathFor_enterMinutes}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RecordSleepButtonInPopup}` becomes VISIBLE
When I click on element located `${xpathFor_RecordSleepButtonInPopup}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RecordSleepButtonInPopup}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_YourProgressInChallange}` becomes VISIBLE
When I wait `PT60S` with `PT15S` polling until element located `${xpathFor_ViewWellnessLogsInSleep}` becomes VISIBLE
When I click on element located `${xpathFor_ViewWellnessLogsInSleep}`
When I wait `PT60S` with `PT15S` polling until element located `${xpathFor_sleepSection}` becomes VISIBLE
When I wait `PT30S` with `PT15S` polling until element located `${xpathFor_RecordedSleep}` becomes VISIBLE
When I navigate back
When I wait `PT30S` with `PT05S` polling until element located `${xpathFor_UnregisterButtonInSleepChallange}` becomes VISIBLE
When I click on element located `${xpathFor_UnregisterButtonInSleepChallange}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_YesUnregisterInpopup}` becomes VISIBLE
When I click on element located `${xpathFor_YesUnregisterInpopup}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UnregisterButtonInSleepChallange}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ActiveChallengesHeader}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_RegisterButtonInSleepChallange}` becomes VISIBLE
