Description: As a user, I want to be able to review my active challenges to keep track of my progress and timeframes.

Meta:

    @Epic PT-645[PT-903]
    @group extended
    @layout desktop
    @challenges
    @Priority 3
    @issueId PT-903

GivenStories: story/web/desktop/logIn/MH_Login.story

Scenario: [Desktop][Challenges] No teams available

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_menuWellness}` becomes VISIBLE
When I click on element located `${xpathFor_menuWellness}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_cmdChallenges}` becomes VISIBLE
When I click on element located `${xpathFor_cmdChallenges}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ActiveChallengesHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RegisterButtonInChallengeNOTeams}` becomes VISIBLE
When I click on element located `${xpathFor_RegisterButtonInChallengeNOTeams}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ChooseYourTeam}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RegisterForATeam}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CreateYourOwnTeam}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_NoTeamsAreCurrentlyAvailableToJoinTextMsg}` becomes VISIBLE
When I click on element located `${xpathFor_CancelButtonInpopup}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ChooseYourTeam}` becomes NOT_VISIBLE
