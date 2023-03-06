Description: As a user, I want to be able to see the information on my immunizations to be more aware of my health

Meta:

    @Epic PT-170[PT-638]
    @group extended
    @layout desktop
    @MyHealth
    @Priority 3
    @issueId PT-638

GivenStories: story/web/desktop/myHealth/MH_desk_MyHealth_LogIn2.story

Scenario: [Desktop][Health Summary: Immunizations] No immunizations

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_healthSummarySectionSelected}` becomes VISIBLE
When I click on element located `${xpathFor_healthSummarySectionSelected}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectImmunizationsFromHealthSummaryInDesk}` becomes VISIBLE
When I click on element located `${xpathFor_selectImmunizationsFromHealthSummaryInDesk}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerImmunizations}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_NoImmunizationsFound}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortByImmunization}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_searchField}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_printLink}` becomes NOT_VISIBLE
