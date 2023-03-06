Description:As a user, I want to be able to record my fitness activities to track my health progress and lifestyle.

Meta:

    @Epic PT-170[PT-506]
    @group critical_path
    @layout chrome_phone
    @wellness_logs
    @Priority 1

GivenStories: story/web/mobileView/logIn/MH_mob_LoginPrecondition.story

Scenario: [Mobile][Wellness Logs: Fitness] View and Navigation

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobHamburgerMenuIcon}` becomes VISIBLE
When I click on element located `${xpathFor_mobHamburgerMenuIcon}`
When I click on element located `${xpathFor_mobMenuWellness}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobCommandWellnessLogs}` becomes VISIBLE
When I click on element located `${xpathFor_mobCommandWellnessLogs}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerWellnessLogs}` becomes VISIBLE
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/WellnessLog/get-exercise`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mostRecentEntryInFitness}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobRecordActivityButtonInFitnessSec}` becomes VISIBLE
When I click on element located `${xpathFor_mobRecordActivityButtonInFitnessSec}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordFitnessAvtivityPopup}` becomes VISIBLE
When I click on element located `${xpathFor_cancelButtonInRecordsSteps}`
Then an alert is not present
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerWellnessLogs}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobFitnessSection}` becomes VISIBLE
When I click on element located `${xpathFor_mobFitnessSection}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_fitnessActivityInMobileView}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobBackToWellnessLogs}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_fitnessActivityMinPerMonth}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_fitnessActivityMilesPerMonth}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobRecordActivityButtonInFitnessSec}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_graph}` becomes VISIBLE
Then number of elements found by `className(HistoryList_history-list__item__wUISK)` is > `1`
Then number of elements found by `className(HistoryList_history-list__item__wUISK)` is = `10`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_paginationFWIcon}` becomes VISIBLE
When I click on element located `${xpathFor_paginationFWIcon}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_paginationSecondPageSelected}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_paginationBackIcon}` becomes VISIBLE
When I click on element located `${xpathFor_paginationBackIcon}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_paginationFirstPageSelected}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobBackToWellnessLogs}` becomes VISIBLE
When I click on element located `${xpathFor_mobBackToWellnessLogs}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerWellnessLogs}` becomes VISIBLE
