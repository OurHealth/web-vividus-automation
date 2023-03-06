Description: As a user, I want to be able to see the information on my screenings to know screening results and keep track of my screenings

Meta:

    @Epic PT-170[PT-642]
    @group critical_path
    @layout desktop
    @MyHealth
    @Priority 2
    @issueId PT-642

GivenStories: story/web/desktop/myHealth/MH_desk_MyHealth_LogIn2.story

Scenario: [Desktop][MyHealth: Screening] No screenings

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_healthSummarySectionSelected}` becomes VISIBLE
When I click on element located `${xpathFor_healthSummarySectionSelected}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectScreeningsFromHealthSummaryInDesktop}` becomes VISIBLE
When I click on element located `${xpathFor_selectScreeningsFromHealthSummaryInDesktop}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerScreenings}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_NoScreeningsfoundFoundInDesk}` becomes VISIBLE
Then the text 'No screenings found.' exists
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortByScreenings}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_searchField}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_printLink}` becomes NOT_VISIBLE
