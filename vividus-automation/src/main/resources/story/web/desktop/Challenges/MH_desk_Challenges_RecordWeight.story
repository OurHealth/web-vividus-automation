Description: As a user, I want to be able to review my active challenges to keep track of my progress and timeframes.

Meta:

    @Epic PT-645[PT-908]
    @group critical_path
    @layout desktop
    @challenges
    @Priority 2
    @issueId PT-908

GivenStories: story/web/desktop/logIn/MH_Login.story

Scenario: [Desktop][Challenges] Record Weight

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_menuWellness}` becomes VISIBLE
When I click on element located `${xpathFor_menuWellness}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_cmdChallenges}` becomes VISIBLE
When I click on element located `${xpathFor_cmdChallenges}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ActiveChallengesHeader}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_RegisterButtonInWeightChallange}` becomes VISIBLE
When I click on element located `${xpathFor_RegisterButtonInWeightChallange}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ChooseOrCreateTeamPopup}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_SelectATeamdropdown}` becomes VISIBLE
When I click on element located `${xpathFor_SelectATeamdropdown}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_SelectATeamFromPopup}` becomes VISIBLE
When I click on element located `${xpathFor_SelectATeamFromPopup}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SaveButton}` becomes VISIBLE
When I click on element located `${xpathFor_SaveButton}`
When I click on element located `${xpathFor_SaveButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RecordWeight}` becomes VISIBLE
When I click on element located `${xpathFor_RecordWeight}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordWeightPopup}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_enterWeight}` becomes VISIBLE
When I enter `90` in field located `${xpathFor_enterWeight}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RecordWeightButtonInPopup}` becomes VISIBLE
When I click on element located `${xpathFor_RecordWeightButtonInPopup}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RecordWeightButtonInPopup}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TeamProgressInTeamChallange}` becomes VISIBLE
When I wait `PT60S` with `PT15S` polling until element located `${xpathFor_ViewWellnessLogsInWeightChallange}` becomes VISIBLE
When I click on element located `${xpathFor_ViewWellnessLogsInWeightChallange}`
When I wait `PT60S` with `PT15S` polling until element located `${xpathFor_weightSection}` becomes VISIBLE
When I wait `PT30S` with `PT15S` polling until element located `${xpathFor_RecordedWeight}` becomes VISIBLE
When I navigate back
When I wait `PT30S` with `PT05S` polling until element located `${xpathFor_UnregisterButtonInWeightChallange}` becomes VISIBLE
When I click on element located `${xpathFor_UnregisterButtonInWeightChallange}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_YesUnregisterInpopup}` becomes VISIBLE
When I click on element located `${xpathFor_YesUnregisterInpopup}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UnregisterButtonInWeightChallange}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ActiveChallengesHeader}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_RegisterButtonInWeightChallange}` becomes VISIBLE
