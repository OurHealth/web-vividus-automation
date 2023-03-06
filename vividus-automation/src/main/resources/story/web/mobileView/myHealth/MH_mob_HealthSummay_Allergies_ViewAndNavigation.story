Description: As a user, I want to be able to see the information on my recorded allergies to be more aware of my health

Meta:

    @Epic PT-170[PT-627]
    @group critical_path
    @layout chrome_phone
    @MyHealth
    @Priority 2

GivenStories: story/web/mobileView/logIn/MH_mob_HealthSummary_LogIn.story

Scenario: [Mobile][Health Summary: Allergies] View and Navigation


!-- Given I am on the main application page
!-- When I wait until element located `${xpathFor_signInHeader}` contains text 'Sign In'
!-- When I enter `remployee1` in field located `${userNameXpath}`
!-- When I enter `Default1` in field located `${pwdXpath}`
!-- When I click on element located `${xpathFor_signInButton}`
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
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_healthSummarySectionSelected}` becomes VISIBLE
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/wellness/WellnessLog/allergies`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_searchField}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortByAllergy}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortByOnsetDate}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_printLink}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_listOfAllergies}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_listOfOnsetDate}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_listOfReactions}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortByAllergy}` becomes VISIBLE
When I click on element located `${xpathFor_sortByAllergy}`
Then elements located `${xpathFor_listOfAllergies}` are sorted by text in CASE_INSENSITIVE_DESCENDING order
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_searchField}` becomes VISIBLE
When I enter `peanut` in field located `${xpathFor_searchField}`
When I wait until element located `${xpathFor_listOfAllergies}` contains text 'peanut'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_searchField}` becomes VISIBLE
When I clear field located `${xpathFor_searchField}` using keyboard
When I enter `peanut` in field located `${xpathFor_searchField}`
When I wait until element located `${xpathFor_listOfAllergies}` contains text 'peanut'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_searchField}` becomes VISIBLE
When I clear field located `${xpathFor_searchField}` using keyboard
When I enter `test` in field located `${xpathFor_searchField}`
When I wait until element located `${xpathFor_NoallergiesfoundMsg}` contains text 'No allergies found.'
