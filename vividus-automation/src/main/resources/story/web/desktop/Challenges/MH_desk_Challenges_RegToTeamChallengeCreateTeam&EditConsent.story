
Description: As a user, I want to be able to review my active challenges to keep track of my progress and timeframes.

Meta:

    @Epic PT-170[Jira-PT-899]
    @group smoketest
    @layout desktop
    @challenges
    @Priority 1
    @issueId PT-899

GivenStories: story/web/desktop/logIn/MH_Login.story

Scenario: [Desktop][Challenges] Registration to team challenge, create team and Edit consent

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_menuWellness}` becomes VISIBLE
When I click on element located `${xpathFor_menuWellness}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_cmdChallenges}` becomes VISIBLE
When I click on element located `${xpathFor_cmdChallenges}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ActiveChallengesHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RegisterButtonInWaterChallangeForAutoTeam}` becomes VISIBLE
When I click on element located `${xpathFor_RegisterButtonInWaterChallangeForAutoTeam}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ChooseOrCreateTeamPopup}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CreateYourOwnTeam}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SaveButton}` becomes VISIBLE
When I click on element located `${xpathFor_SaveButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_errorMsgCannotLeftBlank}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CreateYourOwnTeam}` becomes VISIBLE
When I click on element located `${xpathFor_CreateYourOwnTeam}`
When I enter `#{generate(templatify 'Testing Team', 'a', 'b', 'c')}` in field located `${xpathFor_EnterYourTeamName}`
When I click on element located `${xpathFor_SaveButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_WellnessChallengeAuthorizationPopup}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UseOfNameOnLeaderboard}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UseOfNamePhotographsForProgramPromotionAnnouncingResults}` becomes VISIBLE
When I click on element located `${xpathFor_BackButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CancelButtonInpopup}` becomes VISIBLE
When I click on element located `${xpathFor_CancelButtonInpopup}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ActiveChallengesHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RegisterButtonInWaterChallangeForAutoTeam}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ExerciseChallengeForAutomationTeam}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ExerciseChallangeRegisterButton}` becomes VISIBLE
When I click on element located `${xpathFor_ExerciseChallangeRegisterButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ChooseOrCreateTeamPopup}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CreateYourOwnTeam}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RegisterForATeam}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SelectATeamdropdown}` becomes VISIBLE
When I click on element located `${xpathFor_CreateYourOwnTeam}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_EnterYourTeamName}` becomes VISIBLE
When I enter `#{generate(templatify 'Testing Team Challenge', 'a', 'b', 'c')}` in field located `${xpathFor_EnterYourTeamName}`
When I click on element located `${xpathFor_SaveButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_WellnessChallengeAuthorizationPopup}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UseOfNameOnLeaderboard}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UseOfNamePhotographsForProgramPromotionAnnouncingResults}` becomes VISIBLE
When I click on element located `${xpathFor_SaveButton}`
Then an alert is not present
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ExerciseChallangeRegisterButton}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_LeaderboardInExerciseChallenge}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_LeaderboardWithTeamNameInExerciseChallenge}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_EditConsentLinkInExcersiceChallangeTeam}` becomes VISIBLE
When I click on element located `${xpathFor_EditConsentLinkInExcersiceChallangeTeam}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_WellnessChallengeAuthorizationPopup}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_IDoNotGiveEmployer...}` becomes VISIBLE
When I click on element located `${xpathFor_CancelButtonInpopup}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UnregisterButtonInExerciseChallenge}` becomes VISIBLE
When I click on element located `${xpathFor_UnregisterButtonInExerciseChallenge}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_YesUnregisterInpopup}` becomes VISIBLE
When I click on element located `${xpathFor_YesUnregisterInpopup}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UnregisterButtonInExerciseChallenge}` becomes NOT_VISIBLE
