Description: As a user, I want to be able to see the information on my screenings to know screening results and keep track of my screenings

Meta:

    @Epic PT-170[PT-643]
    @group critical_path
    @layout chrome_phone
    @MyHealth
    @Priority 2

GivenStories: story/web/mobileView/myHealth/MH_mob_MyHealth_LogIn1.story

Scenario: [Mobile][MyHealth: Screenings] View and Navigation

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_healthSummarySectionSelected}` becomes VISIBLE
When I click on element located `${xpathFor_healthSummarySectionSelected}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectScreeningsFromHealthSummaryInMob}` becomes VISIBLE
When I click on element located `${xpathFor_selectScreeningsFromHealthSummaryInMob}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerScreenings}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_healthSummarySectionSelected}` becomes VISIBLE
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/wellness/WellnessLog/screenings`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_searchField}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SortByLabel}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortScreeningLink}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortDateLink}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortResultLink}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_listOfScreenings}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_screeningsTypeCOVID}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_screeningsDate}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_screeningsResult}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_printSummary}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_printDetailsReport}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortScreeningLink}` becomes VISIBLE
When I click on element located `${xpathFor_sortScreeningLink}`
Then elements located `${xpathFor_listOfScreeningsDisplayInMob}` are sorted by text in CASE_INSENSITIVE_DESCENDING order
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortDateLink}` becomes VISIBLE
When I click on element located `${xpathFor_sortDateLink}`
Then elements located `${xpathFor_listOfSortedDateInMob}` are sorted by text in CASE_INSENSITIVE_ASCENDING order
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortResultLink}` becomes VISIBLE
When I click on element located `${xpathFor_sortResultLink}`
Then elements located `${xpathFor_listOfResultsDisplayInMob}` are sorted by text in CASE_INSENSITIVE_DESCENDING order
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_searchField}` becomes VISIBLE
When I clear field located `${xpathFor_searchField}` using keyboard
When I enter `Covid-19` in field located `${xpathFor_searchField}`
When I wait until element located `${xpathFor_listOfScreeningsDisplayInMob}` contains text 'COVID-19'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_searchField}` becomes VISIBLE
When I clear field located `${xpathFor_searchField}` using keyboard
When I enter `test` in field located `${xpathFor_searchField}`
When I wait until element located `${xpathFor_NoScreeningsfoundFoundInMob}` contains text 'No screenings found.'
