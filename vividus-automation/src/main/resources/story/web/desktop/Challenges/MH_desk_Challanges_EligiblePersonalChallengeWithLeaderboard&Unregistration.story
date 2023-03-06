
Description: As a user, I want to be able to keep my session active while Im browsing the portal, so that I wouldnt have to log in repeatedly

Meta:

    @Epic PT-170[Jira-PT-204]
    @group critical_path
    @layout desktop
    @articles
    @Priority 1
    @issueId PT-667

GivenStories: story/web/desktop/logIn/MH_Login.story

Scenario: [Desktop][Challenges] Active/eligible personal challenge with leaderboard & unregistration

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_menuWellness}` becomes VISIBLE
When I click on element located `${xpathFor_menuWellness}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_cmdChallenges}` becomes VISIBLE
When I click on element located `${xpathFor_cmdChallenges}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ActiveChallengesHeader}` becomes VISIBLE
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/Challenge/challenges-list`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CustomEntryChallengeNameJumpingAutomationHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RegisterNow}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TargetJumpsDaily}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ChallengeDates}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ChallengeDetails}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RegisterButtonInCustomJumping}` becomes VISIBLE
When I scroll element located `${xpathFor_RegisterButtonInCustomJumping}` into view
When I click on element located `${xpathFor_RegisterButtonInCustomJumping}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_WellnessChallengeAuthorizationInpopup}` becomes VISIBLE
When I click on element located `${xpathFor_SaveButton}`
When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/Challenge/challenges-signup-personal`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CustomEntryChallengeNameJumpingAutomationHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ActiveChallengesHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RegisteredButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TeamReactEmployee9}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RecordEntryButtonInJumping}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ViewEntriesLink}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ChallengeDates}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_YourProgress}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ProgressBarIcon}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SignupDateInJumpingChallange}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_GoalMet}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Rank}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_leaderboard}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_NameColumn}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_totalJumps}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ChallengeDetails}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_EditConsentLink}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UnregisterButtonInChallanges}` becomes VISIBLE
When I click on element located `${xpathFor_UnregisterButtonInChallanges}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_unregisterMessageInpopup}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CancelButtonInpopup}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_YesUnregisterInpopup}` becomes VISIBLE
When I click on element located `${xpathFor_CancelButtonInpopup}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_unregisterMessageInpopup}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RegisterNow}` becomes VISIBLE
When I click on element located `${xpathFor_UnregisterButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_unregisterMessageInpopup}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_YesUnregisterInpopup}` becomes VISIBLE
When I click on element located `${xpathFor_YesUnregisterInpopup}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_YesUnregisterInpopup}` becomes NOT_VISIBLE
When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/Challenge/challenges-unregister`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RegisterButtonForTheChallange}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CustomEntryChallengeNameJumpingAutomationHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RegisterNow}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TargetJumpsDaily}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ChallengeDates}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ChallangeDesription}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RegisteredButton}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SignupDate}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_GoalMet}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Rank}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_leaderboard}` becomes NOT_VISIBLE
