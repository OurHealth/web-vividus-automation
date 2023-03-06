Description: As a user, I want to be able to see the information on my recorded allergies to be more aware of my health

Meta:

    @Epic PT-170[PT-627]
    @group critical_path
    @layout chrome_phone
    @MyHealth
    @Priority 2

GivenStories: story/web/mobileView/myHealth/MH_mob_MyHealth_LogIn1.story

Scenario: [Mobile][Health Summary: Health Issues] View and Navigation


When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_healthSummarySectionSelected}` becomes VISIBLE
When I click on element located `${xpathFor_healthSummarySectionSelected}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HealthIssuesFromHealthSummaryInMob}` becomes VISIBLE
When I click on element located `${xpathFor_HealthIssuesFromHealthSummaryInMob}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerHealthIssues}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_healthSummarySectionSelected}` becomes VISIBLE
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/HealthSummary/problems`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_searchField}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SortByLabel}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortByHealthIssues}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortByOnsetDate}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_printLink}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_listOfHealthIssuesInMob}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HealthIssuesNameInMob}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_onSetDate}` becomes VISIBLE

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortByHealthIssues}` becomes VISIBLE
When I click on element located `${xpathFor_sortByHealthIssues}`
Then elements located `${xpathFor_listOfHealthIssuesInMob}` are sorted by text in CASE_INSENSITIVE_ASCENDING order

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortByOnsetDate}` becomes VISIBLE
When I click on element located `${xpathFor_sortByOnsetDate}`
Then elements located `${xpathFor_listOfOnSetDateInMob}` are sorted by text in CASE_INSENSITIVE_DESCENDING order

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_searchField}` becomes VISIBLE
When I enter `acne` in field located `${xpathFor_searchField}`
When I wait until element located `${xpathFor_HealthIssuesInMob}` contains text 'Acne'

When I clear field located `${xpathFor_searchField}` using keyboard
When I enter `test` in field located `${xpathFor_searchField}`
When I wait until element located `${xpathFor_NoHealthIssuesFound}` contains text 'No health issues found'
