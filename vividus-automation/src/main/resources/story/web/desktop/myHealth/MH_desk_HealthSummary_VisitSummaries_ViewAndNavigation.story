Description: As a user, I want to be able to see the information on my recorded allergies to be more aware of my health

Meta:

    @Epic PT-170[PT-631]
    @group critical_path
    @layout desktop
    @MyHealth
    @Priority 2
    @issueId PT-631

GivenStories: story/web/desktop/myHealth/MH_desk_MyHealth_LogIn.story


Scenario: [Desktop][Health Summary: Visit Summaries] View and Navigation

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_healthSummarySectionSelected}` becomes VISIBLE
When I click on element located `${xpathFor_healthSummarySectionSelected}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_VisitSummariesFromHealthSummaryInDesk}` becomes VISIBLE
When I click on element located `${xpathFor_VisitSummariesFromHealthSummaryInDesk}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerVisitSummarry}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_healthSummarySectionSelected}` becomes VISIBLE
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/HealthSummary/visit-summaries`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_searchField}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SortByLabel}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortByVisitType}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortByVisitDate}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortByProvider}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_listOfVisitsInDesk}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_VisitTypeInDesk}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_VisitDateInDesk}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ProviderInDesk}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ViewAndPrintSummaryInDesk}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortByVisitType}` becomes VISIBLE
When I click on element located `${xpathFor_sortByVisitType}`
Then elements located `${xpathFor_listOfVisitsInDesk}` are sorted by text in CASE_INSENSITIVE_DESCENDING order
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortByVisitDate}` becomes VISIBLE
When I click on element located `${xpathFor_sortByVisitDate}`
Then elements located `${xpathFor_ListOfVisitDatesInDesk}` are sorted by text in CASE_INSENSITIVE_ASCENDING order
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortByProvider}` becomes VISIBLE
When I click on element located `${xpathFor_sortByProvider}`
Then elements located `${xpathFor_ListOfProvidersInDesk}` are sorted by text in CASE_INSENSITIVE_DESCENDING order
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_searchField}` becomes VISIBLE
When I enter `inperson` in field located `${xpathFor_searchField}`
When I wait until element located `${xpathFor_listOfVisitsInDesk}` appears
When I clear field located `${xpathFor_searchField}` using keyboard
When I enter `test` in field located `${xpathFor_searchField}`
When I wait until element located `${xpathFor_NoVisitSummariesFound}` contains text 'No visit summaries found.'
