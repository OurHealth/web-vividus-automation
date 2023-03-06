
Description: As a user, I want to be able to review my active challenges to keep track of my progress and timeframes.

Meta:

    @Epic PT-170[Jira-PT-676]
    @group critical_path
    @layout desktop
    @challenges
    @Priority 2
    @issueId PT-676

GivenStories: story/web/desktop/logIn/MH_Login.story

Scenario: [Desktop][Challenges] Active personal challenge without leaderboard

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_menuWellness}` becomes VISIBLE
When I click on element located `${xpathFor_menuWellness}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_cmdChallenges}` becomes VISIBLE
When I click on element located `${xpathFor_cmdChallenges}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ActiveChallengesHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_StepChallengeForAutomationHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RegisterButtonInStepChallange}` becomes VISIBLE
When I click on element located `${xpathFor_RegisterButtonInStepChallange}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_WellnessChallengeAuthorizationPopup}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SaveButton}` becomes VISIBLE
When I click on element located `${xpathFor_SaveButton}`
When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/Challenge/challenges-signup-personal`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_StepChallengeForAutomationHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RegisteredButtonInDesk}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TeamEmpFNameLName}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RecordSteps}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ViewWellnessLogs}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ChallangeDatesInStepsChallange}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_YourProgressInStepsChallange}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SignupDateInStepChallange}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_GoalMet}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Rank}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_leaderboard}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_EditConsentLink}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UnregisterButtonInChallanges}` becomes VISIBLE
When I click on element located `${xpathFor_UnregisterButtonInChallanges}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_YesUnregisterInpopup}` becomes VISIBLE
When I click on element located `${xpathFor_YesUnregisterInpopup}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UnregisterButton}` becomes NOT_VISIBLE
When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/Challenge/challenges-unregister`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RegisterButtonInStepChallange}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RegisterNow}` becomes VISIBLE
