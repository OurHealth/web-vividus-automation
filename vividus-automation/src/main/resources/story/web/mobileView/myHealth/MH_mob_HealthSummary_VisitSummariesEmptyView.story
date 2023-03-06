Description: As a user, I want to be able to see summaries of my visits to be more aware of my health

Meta:

    @Epic PT-170[PT-785]
    @group extended
    @layout chrome_phone
    @MyHealth
    @Priority 3

GivenStories: story/web/mobileView/myHealth/MH_mob_MyHealth_LogIn2.story


Scenario: [Mobile][Health Summary: Visit Summaries] Empty view

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_healthSummarySectionSelected}` becomes VISIBLE
When I click on element located `${xpathFor_healthSummarySectionSelected}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_VisitSummariesFromHealthSummaryInMob}` becomes VISIBLE
When I click on element located `${xpathFor_VisitSummariesFromHealthSummaryInMob}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerVisitSummarry}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_NoVisitSummariesFound}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_searchField}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SortByLabel}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_printLink}` becomes NOT_VISIBLE
