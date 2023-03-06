Description: As a user, I want to be able to see the information on my recorded allergies to be more aware of my health

Meta:

    @Epic PT-170[PT-629]
    @group extended
    @layout chrome_phone
    @MyHealth
    @Priority 3

GivenStories: story/web/mobileView/logIn/MH_mob_HealthSummary_LogIn.story

Scenario: [Mobile][Health Summary: Allergies] No allergies

!-- When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_profileButton}` becomes VISIBLE
!-- When I scroll context to TOP edge
!-- When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobHamburgerMenuIcon}` becomes VISIBLE
!-- When I click on element located `${xpathFor_mobHamburgerMenuIcon}`
!-- When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobMenuMyHealth}` becomes VISIBLE
!-- When I click on element located `${xpathFor_mobMenuMyHealth}`



When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_cmdHealthSummaryInMyHealthMenu}` becomes VISIBLE
When I click on element located `${xpathFor_cmdHealthSummaryInMyHealthMenu}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerMedications}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_healthSummarySectionSelected}` becomes VISIBLE
When I click on element located `${xpathFor_healthSummarySectionSelected}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectAllergiesFromHealthSummary}` becomes VISIBLE
When I click on element located `${xpathFor_selectAllergiesFromHealthSummary}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerInAllergies}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_NoallergiesfoundMsg}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortByAllergy}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_searchField}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_printLink}` becomes NOT_VISIBLE
