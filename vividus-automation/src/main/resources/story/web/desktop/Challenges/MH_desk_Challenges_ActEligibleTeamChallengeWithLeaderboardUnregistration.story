
Description: As a user, I want to be able to review my active challenges to keep track of my progress and timeframes.

Meta:

    @Epic PT-170[Jira-PT-673]
    @group critical_path
    @layout desktop
    @challenges
    @Priority 2
    @issueId PT-673

GivenStories: story/web/desktop/logIn/MH_Login.story

Scenario: [Desktop][Challenges] Active/eligible team challenge with leaderboard & unregistration

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_menuWellness}` becomes VISIBLE
When I click on element located `${xpathFor_menuWellness}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_cmdChallenges}` becomes VISIBLE
When I click on element located `${xpathFor_cmdChallenges}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ActiveChallengesHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ExerciseChallengeForAutomationTeam}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RegisterNowInExerciseChallenge}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_GoalInExerciseChallenge}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ChallengeDatesInExerciseChallenge}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ExerciseChallangeDesription}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ExerciseChallangeRegisterButton}` becomes VISIBLE
When I click on element located `${xpathFor_ExerciseChallangeRegisterButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ChooseOrCreateTeamPopup}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SelectATeamdropdown}` becomes VISIBLE
When I click on element located `${xpathFor_SelectATeamdropdown}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_OptionBestTeamFromSelectATeamdropdown}` becomes VISIBLE
When I click on element located `${xpathFor_OptionBestTeamFromSelectATeamdropdown}`
When I click on element located `${xpathFor_SaveButton}`
When I click on element located `${xpathFor_SaveButton}`
When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/Challenge/challenges-signup-team`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ExerciseChallengeForAutomationTeam}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RegisteredButtonInDesk}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SelectedTeamBestTeam2022}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordFitnessActivityButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ViewWellnessLogs}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ChallengeDatesInExerciseChallenge}` becomes VISIBLE

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TeamProgress}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ProgressBarIcon}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SignupDate}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_GoalMet}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Rank}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RankInTeam}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TeamTotal}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_leaderboard}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_NameColumn}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TotalMinutesInDesk}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_AvgTotalMinutesInDesk}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ChallengeDetails}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_EditConsentLink}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UnregisterButton}` becomes VISIBLE
When I click on element located `${xpathFor_UnregisterButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_unregisterMessageInpopup}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CancelButtonInpopup}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_YesUnregisterInpopup}` becomes VISIBLE
When I click on element located `${xpathFor_CancelButtonInpopup}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_unregisterMessageInpopup}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RegisteredButtonInMob}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UnregisterButton}` becomes VISIBLE
When I click on element located `${xpathFor_UnregisterButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_unregisterMessageInpopup}` becomes VISIBLE
When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/Challenge/challenges-unregister`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_YesUnregisterInpopup}` becomes VISIBLE
When I click on element located `${xpathFor_YesUnregisterInpopup}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ExerciseChallangeRegisterButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UnregisterButton}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ExerciseChallengeForAutomationTeam}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RegisterNowInExerciseChallenge}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_GoalInExerciseChallenge}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ChallengeDatesInExerciseChallenge}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ExerciseChallangeDesription}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RegisteredInExecrsiceChallange}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SignupDate}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_GoalMetInExecrciseChallange}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RankInTeam}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_leaderboard}` becomes NOT_VISIBLE
