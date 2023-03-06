Description: As a user, I want to be able to see the information on my screenings to know screening results and keep track of my screenings

Meta:

    @Epic PT-170[PT-641]
    @group critical_path
    @layout desktop
    @MyHealth
    @Priority 2
    @issueId PT-641

GivenStories: story/web/desktop/myHealth/MH_desk_MyHealth_LogIn.story

Scenario: [Mobile][MyHealth: Screenings] View and Navigation

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_healthSummarySectionSelected}` becomes VISIBLE
When I click on element located `${xpathFor_healthSummarySectionSelected}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectScreeningsFromHealthSummaryInDesk}` becomes VISIBLE
When I click on element located `${xpathFor_selectScreeningsFromHealthSummaryInDesk}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerScreenings}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_healthSummarySectionSelected}` becomes VISIBLE
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/wellness/WellnessLog/screenings`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_searchField}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SortByLabel}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortScreeningLink}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortDateLink}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortResultLink}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_listOfScreeningsInDesktopView}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_screeningsTypeCOVIDInDesk}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_screeningsDateInDesk}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_screeningsResultInDesk}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_printSummary}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_printDetailsReport}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortScreeningLink}` becomes VISIBLE
When I click on element located `${xpathFor_sortScreeningLink}`
Then elements located `${xpathFor_listOfScreeningsInDesktopView}` are sorted by text in CASE_INSENSITIVE_DESCENDING order
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortDateLink}` becomes VISIBLE
When I click on element located `${xpathFor_sortDateLink}`
Then elements located `${xpathFor_listOfSortedDateInDesk}` are sorted by text in CASE_INSENSITIVE_ASCENDING order
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortResultLink}` becomes VISIBLE
When I click on element located `${xpathFor_sortResultLink}`
Then elements located `${xpathFor_listOfResultsDisplayInDesk}` are sorted by text in CASE_INSENSITIVE_DESCENDING order
When I scroll context to TOP edge
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_searchField}` becomes VISIBLE
When I enter `Covid-19` in field located `${xpathFor_searchField}`
When I wait until element located `${xpathFor_listOfScreeningsInDesktopView}` contains text 'COVID-19'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_searchField}` becomes VISIBLE
When I clear field located `${xpathFor_searchField}` using keyboard
When I enter `test` in field located `${xpathFor_searchField}`
When I wait until element located `${xpathFor_NoScreeningsfoundFoundInMob}` contains text 'No screenings found.'
