Description: As a user, I want to be able to see the information on my immunizations to be more aware of my health

Meta:

    @Epic PT-170[PT-639]
    @group extended
    @layout chrome_phone
    @MyHealth
    @Priority 3

GivenStories: story/web/mobileView/myHealth/MH_mob_MyHealth_LogIn2.story

Scenario: [Mobile][Health Summary: Immunizations] No immunizations


When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_healthSummarySectionSelected}` becomes VISIBLE
When I click on element located `${xpathFor_healthSummarySectionSelected}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectImmunizationsFromHealthSummaryInMob}` becomes VISIBLE
When I click on element located `${xpathFor_selectImmunizationsFromHealthSummaryInMob}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerImmunizations}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_NoImmunizationsFoundInMob}` becomes VISIBLE
Then the text 'No immunizations found.' exists
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortByImmunization}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_searchField}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_printLink}` becomes NOT_VISIBLE
