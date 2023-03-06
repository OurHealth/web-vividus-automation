Description: As a user, I want to be able to see the information on my recorded allergies to be more aware of my health

Meta:

    @Epic PT-170[PT-783]
    @group critical_path
    @layout chrome_phone
    @MyHealth
    @Priority 2

GivenStories: story/web/mobileView/myHealth/MH_mob_MyHealth_LogIn1.story


Scenario: [Mobile][Health Summary: Visit Summaries] View and Navigation

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_healthSummarySectionSelected}` becomes VISIBLE
When I click on element located `${xpathFor_healthSummarySectionSelected}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_VisitSummariesFromHealthSummaryInMob}` becomes VISIBLE
When I click on element located `${xpathFor_VisitSummariesFromHealthSummaryInMob}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerVisitSummarry}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_healthSummarySectionSelected}` becomes VISIBLE
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/HealthSummary/visit-summaries`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_searchField}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SortByLabel}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortByVisitType}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortByVisitDate}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortByProvider}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_listOfVisitsInMob}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_VisitTypeInMob}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_VisitDateInDesk}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ProviderInMob}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ViewAndPrintSummaryInMob}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortByVisitType}` becomes VISIBLE
When I click on element located `${xpathFor_sortByVisitType}`
Then elements located `${xpathFor_listOfVisitsInMob}` are sorted by text in CASE_INSENSITIVE_DESCENDING order
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortByVisitDate}` becomes VISIBLE
When I click on element located `${xpathFor_sortByVisitDate}`
Then elements located `${xpathFor_ListOfVisitDatesInMobAfterSort}` are sorted by text in CASE_INSENSITIVE_ASCENDING order
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortByProvider}` becomes VISIBLE
When I click on element located `${xpathFor_sortByProvider}`
Then elements located `${xpathFor_ListOfProvidersInMobAfterSort}` are sorted by text in CASE_INSENSITIVE_DESCENDING order
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_searchField}` becomes VISIBLE
When I enter `inperson` in field located `${xpathFor_searchField}`
When I wait until element located `${xpathFor_listOfVisitsInMob}` appears
When I clear field located `${xpathFor_searchField}` using keyboard
When I enter `test` in field located `${xpathFor_searchField}`
When I wait until element located `${xpathFor_NoVisitSummariesFound}` contains text 'No visit summaries found.'
