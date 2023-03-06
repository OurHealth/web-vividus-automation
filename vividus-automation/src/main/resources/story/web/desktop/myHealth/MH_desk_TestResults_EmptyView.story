Description: As a user, I want to be able to get my test results remotely to be aware of my health conditions and issues immediately

Meta:

    @Epic PT-170[PT-612]
    @group extended
    @layout desktop
    @MyHealth
    @Priority 3
    @issueId PT-612

Scenario: [Desktop][MyHealth: Test Results] View and Navigation

Given I am on the main application page
When I change window size to `1280x720`
When I wait until element located `${xpathFor_signInHeader}` contains text '${text_SignIn}'
When I enter `remployee9` in field located `${userNameXpath}`
When I enter `Default1` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_menuMyHealth}` becomes VISIBLE
When I click on element located `${xpathFor_menuMyHealth}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_cmdTestResultsInMyHealthMenu}` becomes VISIBLE
When I click on element located `${xpathFor_cmdTestResultsInMyHealthMenu}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerTestResultsInDashboard}` becomes VISIBLE
When I wait until element located `${xpathFor_testResultsNoTestResultsFoundMsg}` appears
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_searchField}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortByDateOrTest}` becomes NOT_VISIBLE
