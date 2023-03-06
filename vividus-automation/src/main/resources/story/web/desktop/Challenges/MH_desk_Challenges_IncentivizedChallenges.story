
Description: As a user, I want to be able to review my active challenges to keep track of my progress and timeframes.

Meta:

    @Epic PT-170[Jira-PT-675]
    @group extended
    @layout desktop
    @challenges
    @Priority 3
    @issueId PT-675

GivenStories: story/web/desktop/logIn/MH_Login.story

Scenario: [Desktop][Challenges] Incentivized challenges

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_menuWellness}` becomes VISIBLE
When I click on element located `${xpathFor_menuWellness}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_cmdChallenges}` becomes VISIBLE
When I click on element located `${xpathFor_cmdChallenges}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SleepChallengeForAutomationHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_IncentivizedChallenge}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RegisterButtonInSleepChallange}` becomes VISIBLE
When I click on element located `${xpathFor_RegisterButtonInSleepChallange}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SaveButton}` becomes VISIBLE
When I click on element located `${xpathFor_SaveButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RegisteredButtonInDesk}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_NameColumn}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TotalHours}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordSleepButtonInSleepSection}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UnregisterButtonInSleepChallange}` becomes VISIBLE
When I click on element located `${xpathFor_UnregisterButtonInSleepChallange}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_YesUnregisterInpopup}` becomes VISIBLE
When I click on element located `${xpathFor_YesUnregisterInpopup}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SleepChallengeForAutomationHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_IncentivizedChallenge}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RegisterButtonInSleepChallange}` becomes VISIBLE
