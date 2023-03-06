Description: As a user, I want to be able to get my test results remotely to be aware of my health conditions and issues immediately

Meta:

    @Epic PT-170[PT-613]
    @group extended
    @layout chrome_phone
    @MyHealth
    @Priority 3

Scenario: [Mobile][MyHealth: Test results] Empty View

Given I am on the main application page
When I wait until element located `${xpathFor_signInHeader}` contains text '${text_SignIn}'
When I enter `remployee9` in field located `${userNameXpath}`
When I enter `Default1` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_profileButton}` becomes VISIBLE
When I scroll context to TOP edge
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobHamburgerMenuIcon}` becomes VISIBLE
When I click on element located `${xpathFor_mobHamburgerMenuIcon}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobMenuMyHealth}` becomes VISIBLE
When I click on element located `${xpathFor_mobMenuMyHealth}`



When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_cmdTestResultsInMyHealthMenu}` becomes VISIBLE
When I click on element located `${xpathFor_cmdTestResultsInMyHealthMenu}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerTestResultsInDashboard}` becomes VISIBLE
When I wait until element located `${xpathFor_testResultsNoTestResultsFoundMsg}` appears
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_searchField}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortByDateOrTest}` becomes NOT_VISIBLE
