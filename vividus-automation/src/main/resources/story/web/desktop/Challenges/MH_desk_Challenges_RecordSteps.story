Description: As a user, I want to be able to review my active challenges to keep track of my progress and timeframes.

Meta:

    @Epic PT-645[PT-906]
    @group critical_path
    @layout desktop
    @challenges
    @Priority 2
    @issueId PT-906

GivenStories: story/web/desktop/logIn/MH_Login.story

Scenario: [Desktop][Challenges] Record Steps

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_menuWellness}` becomes VISIBLE
When I click on element located `${xpathFor_menuWellness}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_cmdChallenges}` becomes VISIBLE
When I click on element located `${xpathFor_cmdChallenges}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ActiveChallengesHeader}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_RegisterButtonInStepsChallange}` becomes VISIBLE
When I click on element located `${xpathFor_RegisterButtonInStepsChallange}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_WellnessChallengeAuthorizationPopup}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SaveButton}` becomes VISIBLE
When I click on element located `${xpathFor_SaveButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RecordSteps}` becomes VISIBLE
When I click on element located `${xpathFor_RecordSteps}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobRecordSteps}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_enterSteps}` becomes VISIBLE
When I enter `1234` in field located `${xpathFor_enterSteps}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RecordStepButtonInPopup}` becomes VISIBLE
When I click on element located `${xpathFor_RecordStepButtonInPopup}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobRecordSteps}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_YourProgressInStepsChallange}` becomes VISIBLE
When I wait `PT60S` with `PT15S` polling until element located `${xpathFor_ViewWellnessLogsInStep}` becomes VISIBLE
When I click on element located `${xpathFor_ViewWellnessLogsInStep}`
When I wait `PT60S` with `PT15S` polling until element located `${xpathFor_stepsSection}` becomes VISIBLE
When I click on element located `${xpathFor_stepsSection}`
When I wait `PT30S` with `PT15S` polling until element located `${xpathFor_RecordedSteps}` becomes VISIBLE
When I navigate back
When I navigate back
When I wait `PT30S` with `PT05S` polling until element located `${xpathFor_UnregisterButtonInStepsChallange}` becomes VISIBLE
When I click on element located `${xpathFor_UnregisterButtonInStepsChallange}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_YesUnregisterInpopup}` becomes VISIBLE
When I click on element located `${xpathFor_YesUnregisterInpopup}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UnregisterButtonInStepsChallange}` becomes NOT_VISIBLE
