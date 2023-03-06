Description: As a user, I want to be able to see my completed challenges to keep and track the history of my achievements

Meta:

    @Epic PT-645[PT-963]
    @group critical_path
    @layout desktop
    @challenges
    @Priority 2
    @issueId PT-963

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
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CompletedPersonalChallengeShowOnActive}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CompletedButtonInCompletedPersonalChallenge}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TeamUserFNameLName}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_GoalInCompletedPersonalChallenge}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ChallangeDatesInCompletedPersonalChallenge}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_YourProgressInCompletedPersonalChallenge}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ProgressBarIconInCompletedPersonalChallenge}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SignUpDateInCompletedPersonalChallenge}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_GoalMetInCompletedPersonalChallenge}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RankInCompletedPersonalChallenge}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CongratsMessageInCompletedPersonalChallenge}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_LeadersBoardInCompletedPersonalChallenge}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ChallangeDetailsCompletePersonalChallenge}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RecordStepsNotShown}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CompletedChallengesLinkAtTop}` becomes VISIBLE
When I click on element located `${xpathFor_CompletedChallengesLinkAtTop}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CompletedChallenges}` becomes VISIBLE
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/Challenge/challenges-past`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CompletedPersonalChallengeShowOnActive}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ActiveChallangeLink}` becomes VISIBLE
When I click on element located `${xpathFor_ActiveChallangeLink}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ActiveChallengesHeader}` becomes VISIBLE
