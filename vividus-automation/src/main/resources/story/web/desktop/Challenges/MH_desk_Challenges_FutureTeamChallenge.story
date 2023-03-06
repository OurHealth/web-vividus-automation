
Description: As a user, I want to be able to review my active challenges to keep track of my progress and timeframes.

Meta:

    @Epic PT-170[Jira-PT-678]
    @group critical_path
    @layout desktop
    @challenges
    @Priority 2
    @issueId PT-678

GivenStories: story/web/desktop/logIn/MH_Login.story

Scenario: [Desktop][Challenges] Future challenge


When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_menuWellness}` becomes VISIBLE
When I click on element located `${xpathFor_menuWellness}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_cmdChallenges}` becomes VISIBLE
When I click on element located `${xpathFor_cmdChallenges}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_FutureChallengeForAutomation}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RegisterNowInFutureChallenge}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_GoalWithValueInFutureChallenge}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ChallangeDatesInFutureChallenge}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ChallangeDetailsInFutureChallenge}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RegisterButtonInFutureChallenge}` becomes VISIBLE
When I click on element located `${xpathFor_RegisterButtonInFutureChallenge}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_WellnessChallengeAuthorizationPopup}` becomes VISIBLE
When I click on element located `${xpathFor_SaveButton}`
When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/Challenge/challenges-signup-personal`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_FutureChallengeForAutomation}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UnregisterButtonInChallanges}` becomes VISIBLE
When I scroll context to BOTTOM edge
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RegisteredButtonInDesk}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_StartingSoonInFutureChallenge}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TeamReactEmployee9}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RecordStepsDisabled}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ChallangeDatesInFutureChallenge}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_YourProgressInFutureChallange}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ProgressBarIcon}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SignupDate}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_GoalMet}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Rank}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_leaderboard}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ChallangeDetailsInFutureChallenge}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_EditConsentLink}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UnregisterButtonInChallanges}` becomes VISIBLE
When I click on element located `${xpathFor_UnregisterButtonInChallanges}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_YesUnregisterInpopup}` becomes VISIBLE
When I click on element located `${xpathFor_YesUnregisterInpopup}`
When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/Challenge/challenges-unregister`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UnregisterButtonInChallanges}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_StartingSoonInFutureChallenge}` becomes NOT_VISIBLE
