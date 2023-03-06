Description: As a user, I want to be able to review my active challenges to keep track of my progress and timeframes.

Meta:

    @Epic PT-645[PT-895]
    @group smoketest
    @layout desktop
    @challenges
    @Priority 1
    @issueId PT-895

GivenStories: story/web/desktop/logIn/MH_Login.story

Scenario: [Desktop][Challenges] Registration to personal challenge with showing names and edit consent


When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_menuWellness}` becomes VISIBLE
When I click on element located `${xpathFor_menuWellness}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_cmdChallenges}` becomes VISIBLE
When I click on element located `${xpathFor_cmdChallenges}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ActiveChallengesHeader}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_CustomEntryChallengeNameJumpingAutomation}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RigisterButtonInCustomEntryChallengeNameJumpingAutomation}` becomes VISIBLE
When I click on element located `${xpathFor_RigisterButtonInCustomEntryChallengeNameJumpingAutomation}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_WellnessChallengeAuthorizationPopup}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UseOfNameOnLeaderboard}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UseOfNamePhotographsForProgramPromotionAnnouncingResults}` becomes VISIBLE
When I click on element located `${xpathFor_CancelButtonInpopup}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_WellnessChallengeAuthorizationPopup}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RigisterButtonInCustomEntryChallengeNameJumpingAutomation}` becomes VISIBLE
When I click on element located `${xpathFor_RigisterButtonInCustomEntryChallengeNameJumpingAutomation}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SelectedRadioButtonIHerebyConsentToTheDisplay...}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_IGiveEmployerAndOrItsWellnessProgram...}` becomes VISIBLE
When I click on element located `${xpathFor_SaveButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_WellnessChallengeAuthorizationPopup}` becomes NOT_VISIBLE

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RigisterButtonInCustomEntryChallengeNameJumpingAutomation}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_LeadersBoardContainReactEmp9}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_EditConsentLinkOfCustomEntryChallangeJumping}` becomes VISIBLE
When I click on element located `${xpathFor_EditConsentLinkOfCustomEntryChallangeJumping}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_WellnessChallengeAuthorizationPopup}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SelectedRadioButtonIHerebyConsentToTheDisplay...}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_IGiveEmployerAndOrItsWellnessProgram...}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_IDoNotConsentToTheDisplay}` becomes VISIBLE
When I click on element located `${xpathFor_IDoNotConsentToTheDisplay}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_IDoNotGiveEmployer...}` becomes VISIBLE
When I click on element located `${xpathFor_IDoNotGiveEmployer...}`
When I click on element located `${xpathFor_CancelButtonInpopup}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_LeadersBoardContainReactEmp9}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_EditConsentLink}` becomes VISIBLE
When I click on element located `${xpathFor_EditConsentLink}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_IDoNotConsentToTheDisplay}` becomes VISIBLE
When I click on element located `${xpathFor_IDoNotConsentToTheDisplay}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_IDoNotGiveEmployer...}` becomes VISIBLE
When I click on element located `${xpathFor_IDoNotGiveEmployer...}`
When I click on element located `${xpathFor_SaveButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_LeadersBoardContainReactEmp9}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_LeadersBoardFirstPlace}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UnregisterButtonInJumping}` becomes VISIBLE
When I click on element located `${xpathFor_UnregisterButtonInJumping}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_YesUnregisterInpopup}` becomes VISIBLE
When I click on element located `${xpathFor_YesUnregisterInpopup}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_YesUnregisterInpopup}` becomes NOT_VISIBLE
