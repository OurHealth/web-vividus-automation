Description: As a user, I want to be able to see my completed challenges to keep and track the history of my achievements

Meta:

    @Epic PT-645[PT-965]
    @group critical_path
    @layout desktop
    @challenges
    @Priority 2
    @issueId PT-965

Scenario: [Desktop][Challenges] Completed challenge on Active board

Given I am on the main application page
When I wait until element located `${xpathFor_signInHeader}` contains text 'Sign In'
When I enter `remployee8` in field located `${userNameXpath}`
When I enter `${userPwd}` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_menuWellness}` becomes VISIBLE
When I click on element located `${xpathFor_menuWellness}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_cmdChallenges}` becomes VISIBLE
When I click on element located `${xpathFor_cmdChallenges}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ActiveChallengesHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CompletedPersonalChallengeInActive}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CompletedChallengesLinkAtTop}` becomes VISIBLE
When I click on element located `${xpathFor_CompletedChallengesLinkAtTop}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CompletedChallenges}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CompletedPersonalChallengeDoNotShowOnActive}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TopFiveParticipantsInCompletedPerChallangeNotShowActive}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_LeaderboardInCompletedPerChallangeNotShowActive}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_FirstPlaceInLeaderBoard}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ReactEmployee10InLeaderBoard}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CompletedPersonalChallengeHideName}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TopFiveParticipantsInCompletedPersonalChallengeHideName}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_LeaderboardInCompletedPersonalChallengeHideName}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_FirstPlaceInLeaderBoardCompletedPersonalChallengeHideName}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ReactEmployee10InLeaderBoardInPersonalChallengeHideName}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CompletedPersonalChallengeNoLeaderboard}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_LeaderboardInCompletedPerChallangeNoLeaderboard}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CongratsMessageInCompletedPersonalChallengeNoLeaderBoard}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TopFiveParticipantsInCompletedPersonalChallengeNoLeaderBoard}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CompletedPersonalChallengehideWinnerName}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TopFiveTeamsInCompTeamChallangeHideWinName}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_LeaderboardInCompletedTeamChallangeHideWinName}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_FirstPlaceInCompletedTeamChallengeHideWinName}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CompletedPersonalChallengeShowWinnerName}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CongratsMessageInComplTeamChallengeShowWinName}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_LeaderboardInComplTeamChallangeShowWinName}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_FirstPlaceWinTeamInCompletedTeamChallengeShowWinName}` becomes VISIBLE
