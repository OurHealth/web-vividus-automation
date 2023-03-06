Description: As a user, I want to be able to see the information on my immunizations to be more aware of my health

Meta:

    @Epic PT-170[PT-637]
    @group critical_path
    @layout chrome_phone
    @MyHealth
    @Priority 2

GivenStories: story/web/mobileView/myHealth/MH_mob_MyHealth_LogIn1.story

Scenario: [Mobile][Health Summary: Immunizations] View and Navigation

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_healthSummarySectionSelected}` becomes VISIBLE
When I click on element located `${xpathFor_healthSummarySectionSelected}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectImmunizationsFromHealthSummaryInMob}` becomes VISIBLE
When I click on element located `${xpathFor_selectImmunizationsFromHealthSummaryInMob}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerImmunizations}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_healthSummarySectionSelected}` becomes VISIBLE
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/wellness/WellnessLog/immunizations`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_searchField}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortByImmunization}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortByImmunizationDate}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_printLink}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_listOfImmunizationsDisplayInMob}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_immunizationInMobView}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_immunizationDescription}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_AdministeredDateInMob}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_AdministeredSiteInMob}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortByImmunization}` becomes VISIBLE
When I click on element located `${xpathFor_sortByImmunization}`
Then elements located `${xpathFor_listOfImmunizationsDisplayInMob}` are sorted by text in CASE_INSENSITIVE_DESCENDING order
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_searchField}` becomes VISIBLE
When I clear field located `${xpathFor_searchField}` using keyboard
When I enter `Covid-19` in field located `${xpathFor_searchField}`
When I wait until element located `${xpathFor_listOfImmunizationsDisplayInMob}` contains text 'COVID'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_searchField}` becomes VISIBLE
When I clear field located `${xpathFor_searchField}` using keyboard
When I enter `test` in field located `${xpathFor_searchField}`
When I wait until element located `${xpathFor_NoImmunizationsFound}` contains text 'No immunizations found.'
