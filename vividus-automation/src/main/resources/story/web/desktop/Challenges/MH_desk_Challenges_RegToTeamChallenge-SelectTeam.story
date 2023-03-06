Description: As a user, I want to be able to review my active challenges to keep track of my progress and timeframes.

Meta:

    @Epic PT-170[Jira-PT-901]
    @group critical_path
    @layout desktop
    @challenges
    @Priority 2
    @issueId PT-901

GivenStories: story/web/desktop/logIn/MH_Login.story

Scenario: [Desktop][Challenges] Registration to team challenge - select team

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_menuWellness}` becomes VISIBLE
When I click on element located `${xpathFor_menuWellness}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_cmdChallenges}` becomes VISIBLE
When I click on element located `${xpathFor_cmdChallenges}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ActiveChallengesHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_WeightChallengeForAutomationTeam}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RigisterButtonInWeightChallange}` becomes VISIBLE
When I click on element located `${xpathFor_RigisterButtonInWeightChallange}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ChooseOrCreateTeamPopup}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RegisterForATeam}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CreateYourOwnTeam}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SelectATeamdropdown}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SaveButton}` becomes VISIBLE
When I click on element located `${xpathFor_SaveButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_errorMsgCannotLeftBlank}` becomes VISIBLE
When I click on element located `${xpathFor_SelectATeamdropdown}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SelectATeamFromPopup}` becomes VISIBLE
When I click on element located `${xpathFor_SelectATeamFromPopup}`
When I click on element located `${xpathFor_SaveButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UseOfNameOnLeaderboard}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UseOfNamePhotographsForProgramPromotionAnnouncingResults}` becomes VISIBLE
When I click on element located `${xpathFor_SaveButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ActiveChallengesHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RigisterButtonInWeightChallange}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_LeadersBoardFirstPlace}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_EditConsentLink}` becomes VISIBLE
When I click on element located `${xpathFor_EditConsentLink}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_WellnessChallengeAuthorizationPopup}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_IDoNotGiveEmployer...}` becomes VISIBLE
When I click on element located `${xpathFor_CancelButtonInpopup}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UnregisterButtonInWeightChallange}` becomes VISIBLE
When I click on element located `${xpathFor_UnregisterButtonInWeightChallange}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_YesUnregisterInpopup}` becomes VISIBLE
When I click on element located `${xpathFor_YesUnregisterInpopup}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UnregisterButtonInWeightChallange}` becomes NOT_VISIBLE
