Description: As a user, I want to be able to review my active challenges to keep track of my progress and timeframes.

Meta:

    @Epic PT-645[PT-914]
    @group smoketest
    @layout desktop
    @challenges
    @Priority 1
    @issueId PT-914

GivenStories: story/web/desktop/logIn/MH_Login.story

Scenario: [Desktop][Challenges] Record custom entry

When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_menuWellness}` becomes VISIBLE
When I click on element located `${xpathFor_menuWellness}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_cmdChallenges}` becomes VISIBLE
When I click on element located `${xpathFor_cmdChallenges}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ActiveChallengesHeader}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_RegisterButtonInCustomJumping}` becomes VISIBLE
When I click on element located `${xpathFor_RegisterButtonInCustomJumping}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SaveButton}` becomes VISIBLE
When I click on element located `${xpathFor_SaveButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RecordEntryButtonInJumping}` becomes VISIBLE
When I click on element located `${xpathFor_RecordEntryButtonInJumping}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RecordEntryPopup}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_EnterAmount}` becomes VISIBLE
When I enter `111` in field located `${xpathFor_EnterAmount}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RecordEntryButton}` becomes VISIBLE
When I click on element located `${xpathFor_RecordEntryButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_YourProgressInChallange}` becomes VISIBLE
When I wait until state of element located `${xpathFor_ViewEntriesLink}` is ENABLED
When I wait `PT60S` with `PT20S` polling until element located `${xpathFor_ViewEntriesLink}` becomes VISIBLE
When I click on element located `${xpathFor_ViewEntriesLink}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ChallengeEntries}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_JumpsRecordedOnChallangeEntries}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_EditIconInChallangeEntries}` becomes VISIBLE
When I click on element located `${xpathFor_EditIconInChallangeEntries}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RecordEntryPopup}` becomes VISIBLE
When I enter `222` in field located `${xpathFor_EnterAmount}`
When I click on element located `${xpathFor_RecordEntryButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_JumpsRecordedOnChallangeEntriesAfterUpdate}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DeleteIconInChallangeEntries}` becomes VISIBLE
When I click on element located `${xpathFor_DeleteIconInChallangeEntries}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_JumpsRecordedOnChallangeEntriesAfterUpdate}` becomes NOT_VISIBLE
When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/Challenge/challenges-custom`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CloseButton}` becomes VISIBLE
When I click on element located `${xpathFor_CloseButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UnregisterButtonInJumpingChallanges}` becomes VISIBLE
When I click on element located `${xpathFor_UnregisterButtonInJumpingChallanges}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_YesUnregisterInpopup}` becomes VISIBLE
When I click on element located `${xpathFor_YesUnregisterInpopup}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ActiveChallengesHeader}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_RegisterButtonInCustomJumping}` becomes VISIBLE
