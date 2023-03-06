Description: As a user, I want to be able to see the information on my recorded health issues (or Problems in the athena medical record) to be more aware of my health

Meta:

    @Epic PT-645[PT-634]
    @group extended
    @layout chrome_phone
    @MyHealth
    @Priority 3

GivenStories: story/web/mobileView/myHealth/MH_mob_HealthSummary_LogIn.story


Scenario: [Mobile][Health Summary: Health Issues] No issues

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_cmdHealthSummaryInMyHealthMenu}` becomes VISIBLE
When I click on element located `${xpathFor_cmdHealthSummaryInMyHealthMenu}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerMedications}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_healthSummarySectionSelected}` becomes VISIBLE
When I click on element located `${xpathFor_healthSummarySectionSelected}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HealthIssuesFromHealthSummaryInMob}` becomes VISIBLE
When I click on element located `${xpathFor_HealthIssuesFromHealthSummaryInMob}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerHealthIssues}` becomes VISIBLE
When I wait until element located `${xpathFor_NoHealthIssuesFound}` contains text 'No health issues found.'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_searchField}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SortByLabel}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortByHealthIssues}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortByOnsetDate}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_printLink}` becomes NOT_VISIBLE
