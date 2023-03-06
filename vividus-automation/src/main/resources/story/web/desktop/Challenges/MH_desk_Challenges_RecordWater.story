Description: As a user, I want to be able to review my active challenges to keep track of my progress and timeframes.

Meta:

    @Epic PT-645[PT-913]
    @group critical_path
    @layout desktop
    @challenges
    @Priority 2
    @issueId PT-913

GivenStories: story/web/desktop/logIn/MH_Login.story

Scenario: [Desktop][Challenges] Record Water

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_menuWellness}` becomes VISIBLE
When I click on element located `${xpathFor_menuWellness}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_cmdChallenges}` becomes VISIBLE
When I click on element located `${xpathFor_cmdChallenges}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ActiveChallengesHeader}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_RegisterButtonInWaterChallange}` becomes VISIBLE
When I click on element located `${xpathFor_RegisterButtonInWaterChallange}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SaveButton}` becomes VISIBLE
When I click on element located `${xpathFor_SaveButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordWaterButton}` becomes VISIBLE
When I click on element located `${xpathFor_recordWaterButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordWaterPopup}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_enterWaterInWaterRecordPopup}` becomes VISIBLE
When I enter `5` in field located `${xpathFor_enterWaterInWaterRecordPopup}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RecordWaterButtonInPopup}` becomes VISIBLE
When I click on element located `${xpathFor_RecordWaterButtonInPopup}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RecordWaterButtonInPopup}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_YourProgressInChallange}` becomes VISIBLE
When I wait `PT60S` with `PT15S` polling until element located `${xpathFor_ViewWellnessLogsInWaterChallange}` becomes VISIBLE
When I click on element located `${xpathFor_ViewWellnessLogsInWaterChallange}`
When I wait `PT60S` with `PT15S` polling until element located `${xpathFor_waterSection}` becomes VISIBLE
When I click on element located `${xpathFor_waterSection}`
When I wait `PT30S` with `PT15S` polling until element located `${xpathFor_RecordedWater}` becomes VISIBLE
When I navigate back
When I wait `PT30S` with `PT05S` polling until element located `${xpathFor_UnregisterButtonInWaterChallange}` becomes VISIBLE
When I click on element located `${xpathFor_UnregisterButtonInWaterChallange}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_YesUnregisterInpopup}` becomes VISIBLE
When I click on element located `${xpathFor_YesUnregisterInpopup}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UnregisterButtonInWaterChallange}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ActiveChallengesHeader}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_RegisterButtonInWaterChallange}` becomes VISIBLE
