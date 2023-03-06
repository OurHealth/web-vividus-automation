Description: As a user, I want to be able to see the information on my recorded medications to be more aware of my health

Meta:

    @Epic PT-170[PT-623]
    @group extended
    @layout desktop
    @MyHealth
    @Priority 3
    @issueId PT-623

GivenStories: story/web/desktop/logIn/MH_Login.story

Scenario: [Desktop][Health Summary: Medications] No medications

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_menuMyHealth}` becomes VISIBLE
When I click on element located `${xpathFor_menuMyHealth}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_cmdHealthSummaryInMyHealthMenu}` becomes VISIBLE
When I click on element located `${xpathFor_cmdHealthSummaryInMyHealthMenu}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerMedications}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_NoMedicationsFound}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_searchField}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortByMedication}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DisplayHistoricalMedicationsLink}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_printLink}` becomes NOT_VISIBLE
