Description: As a user, I want to be able to get my test results remotely to be aware of my health conditions and issues immediately

Meta:

    @Epic PT-170[PT-611]
    @group critical_path
    @layout chrome_phone
    @MyHealth
    @Priority 2

Scenario: [Mobile][MyHealth: Test Results] View and navigation

Given I am on the main application page
When I wait until element located `${xpathFor_signInHeader}` contains text '${text_SignIn}'
When I enter `remployee1` in field located `${userNameXpath}`
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
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/wellness/WellnessLog/lab-result`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_testResultsMenuItemSelected}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_searchField}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortByDateOrTest}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_listOfTestResults}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_testResultsName}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_testResultsDate}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortByDateOrTest}` becomes VISIBLE
When I click on element located `${xpathFor_sortByDateOrTest}`
Then elements located `${xpathFor_sortByTest}` are sorted by text in ASCENDING order
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_searchField}` becomes VISIBLE
When I enter `blood` in field located `${xpathFor_searchField}`
When I wait until element located `${xpathFor_sortByTest}` contains text 'blood'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_tableWithTestResult}` becomes VISIBLE
When I click on element located `${xpathFor_tableWithTestResult}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_tableWithTestResultDataInRightPane}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_backToTestResults}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_testNameHeaderInRightPane}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_orderProvider}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Performedon}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_listOfTestResults}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_backToTestResults}` becomes VISIBLE
When I click on element located `${xpathFor_backToTestResults}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_listOfTestResults}` becomes VISIBLE
