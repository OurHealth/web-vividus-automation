Description: As a user, I want to be able to switch between employer views to see different content and portal functionality associated with my employers
Meta:

    @Epic PT-170[Jira-PT-269]
    @group smoketest
    @layout desktop
    @profile
    @Priority 1
    @issueId PT-269

Scenario: [Desktop][Employer View] Change employer on Home Page

Given I am on the main application page
When I change window size to `1280x720`
When I wait until element located `${xpathFor_signInHeader}` contains text '${text_SignIn}'
When I enter `<empName>` in field located `${userNameXpath}`
When I enter `<empPwd>` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE
When I scroll context to TOP edge
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_alert1_downLoadOurApp}` becomes VISIBLE
When I wait until element located `${xpathFor_quickLinks}` contains text 'Quick Links'
When I wait until element located `${xpathFor_testCategoryforArticle}` contains text 'Test category for article'
When I scroll context to TOP edge
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_userProfileButton}` becomes VISIBLE
When I click on element located `${xpathFor_userProfileButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_viewAsAflac}` becomes VISIBLE
When I click on element located `${xpathFor_viewAsAflac}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_userProfileButton}` becomes VISIBLE
When I click on element located `${xpathFor_userProfileButton}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_viewingAsAflac}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_alert1_downLoadOurApp}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_quickLinks}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_testCategoryforArticle}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_userProfileButton}` becomes VISIBLE
When I click on element located `${xpathFor_userProfileButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_viewAsDemoEmp}` becomes VISIBLE
When I click on element located `${xpathFor_viewAsDemoEmp}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_userProfileButton}` becomes VISIBLE
When I click on element located `${xpathFor_userProfileButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_viewingAsDemoEmp}` becomes VISIBLE


Examples:
|empName	|empPwd  |
|remployee1 |Default1|
