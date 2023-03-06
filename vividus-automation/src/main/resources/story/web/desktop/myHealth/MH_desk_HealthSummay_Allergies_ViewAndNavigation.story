Description: As a user, I want to be able to see the information on my recorded allergies to be more aware of my health

Meta:

    @Epic PT-170[PT-626]
    @group critical_path
    @layout desktop
    @MyHealth
    @Priority 2
    @issueId PT-626

Scenario: [Desktop][Health Summary: Allergies] View and Navigation

Given I am on the main application page
When I change window size to `1280x720`
When I wait until element located `${xpathFor_signInHeader}` contains text '${text_SignIn}'
When I enter `remployee1` in field located `${userNameXpath}`
When I enter `Default1` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_menuMyHealth}` becomes VISIBLE
When I click on element located `${xpathFor_menuMyHealth}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_cmdHealthSummaryInMyHealthMenu}` becomes VISIBLE
When I click on element located `${xpathFor_cmdHealthSummaryInMyHealthMenu}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerMedications}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_healthSummarySectionSelected}` becomes VISIBLE
When I click on element located `${xpathFor_healthSummarySectionSelected}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectAllergiesFromHealthSummaryInDesk}` becomes VISIBLE
When I click on element located `${xpathFor_selectAllergiesFromHealthSummaryInDesk}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerInAllergies}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_healthSummarySectionSelected}` becomes VISIBLE
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/wellness/WellnessLog/allergies`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_searchField}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortByAllergy}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortByOnsetDate}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_printLink}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_listOfAllergiesInDesktopView}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_AllergyInDesktopView}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_onSetDateInDesktopView}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortByAllergy}` becomes VISIBLE
When I click on element located `${xpathFor_sortByAllergy}`
Then elements located `${xpathFor_listOfAllergiesAfterSortInDesktopView}` are sorted by text in CASE_INSENSITIVE_DESCENDING order
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_searchField}` becomes VISIBLE
When I clear field located `${xpathFor_searchField}` using keyboard
When I enter `peanut` in field located `${xpathFor_searchField}`
When I wait until element located `${xpathFor_listOfAllergiesAfterSortInDesktopView}` contains text 'peanut'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_searchField}` becomes VISIBLE
When I clear field located `${xpathFor_searchField}` using keyboard
When I enter `test` in field located `${xpathFor_searchField}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_NoallergiesfoundMsg}` becomes VISIBLE
