Description:As a user, I want to be able to record my steps to track my health progress and lifestyle

Meta:

    @Epic PT-170[PT-495]
    @group critical_path
    @layout desktop
    @wellness_logs
    @Priority 2
    @issueId PT-495

GivenStories: story/web/desktop/logIn/MH_Login.story

Scenario: [Desktop][Wellness Logs: Water] View and Navigation

When I click on element located `${xpathFor_menuWellness}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_cmdWelnessLogs}` becomes VISIBLE
When I click on element located `${xpathFor_cmdWelnessLogs}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerWellnessLogs}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_fitnessActivity}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_waterSection}` becomes VISIBLE
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/WellnessLog/get-water`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mostRecentEntryInWater}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordWaterButton}` becomes VISIBLE
When I click on element located `${xpathFor_recordWaterButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordWaterPopup}` becomes VISIBLE
When I click on element located `${xpathFor_cancelButtonInRecordsSteps}`
Then an alert is not present
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerWellnessLogs}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerFitnessActivity}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_waterSection}` becomes VISIBLE
When I click on element located `${xpathFor_waterSection}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_waterHeaderInRightPane}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_connectMyDeviceButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordWaterButtonInRightPane}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_graph}` becomes VISIBLE
Then number of elements found by `className(HistoryList_history-list__item__wUISK)` is > `1`
Then number of elements found by `className(HistoryList_history-list__item__wUISK)` is = `10`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_paginationFirstArrow}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_paginationLastArrow}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_paginationFWIconInMob}` becomes VISIBLE
When I click on element located `${xpathFor_paginationFWIconInMob}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_paginationSecondPageSelected}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_paginationBACKIconInMob}` becomes VISIBLE
When I click on element located `${xpathFor_paginationBACKIconInMob}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_paginationFirstPageSelected}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerWellnessLogs}` becomes VISIBLE
