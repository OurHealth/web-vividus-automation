Description: As a user, I want to be able to see the information on my recorded health issues (or Problems in the athena medical record) to be more aware of my health

Meta:

    @Epic PT-645[PT-633]
    @group extended
    @layout desktop
    @MyHealth
    @Priority 3
    @issueId PT-633

GivenStories: story/web/desktop/myHealth/MH_desk_MyHealth_LogIn4.story


Scenario: [Desktop][Health Summary: Health Issues] No issues

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_cmdHealthSummaryInMyHealthMenu}` becomes VISIBLE
When I click on element located `${xpathFor_cmdHealthSummaryInMyHealthMenu}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerMedications}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_healthSummarySectionSelected}` becomes VISIBLE
When I click on element located `${xpathFor_healthSummarySectionSelected}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HealthIssuesFromHealthSummaryInDesk}` becomes VISIBLE
When I click on element located `${xpathFor_HealthIssuesFromHealthSummaryInDesk}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerHealthIssues}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_NoHealthIssuesFound}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_searchField}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SortByLabel}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortByHealthIssues}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortByOnsetDate}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_printLink}` becomes NOT_VISIBLE
