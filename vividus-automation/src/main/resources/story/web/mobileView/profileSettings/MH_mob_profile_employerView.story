Description: As a user, I want to be able to switch between employer views to see different content and portal functionality associated with my employers
Meta:

    @Epic PT-170[Jira-PT-269]
    @group smoketest
    @layout chrome_phone
    @profile
    @Priority 1

    GivenStories: story/web/mobileView/logIn/MH_Login.story

Scenario: [Mobile][Employer View] Change employer on Home Page

When I scroll context to TOP edge
When I wait `PT10S` with `PT05S` polling until element located `By.${xpathFor_alert1_downLoadOurApp}` becomes VISIBLE
When I wait until element located `${xpathFor_quickLinks}` contains text 'Quick Links'
When I wait until element located `${xpathFor_testCategoryforArticle}` contains text 'Test category for article'
When I scroll context to TOP edge
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_profileButton}` becomes VISIBLE
When I click on element located `${xpathFor_profileButton}`
When I click on element located `By.buttonName(View as: Aflac)`
When I click on element located `${xpathFor_mobProfileMenuCloseIcon}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_profileButton}` becomes VISIBLE
When I click on element located `${xpathFor_profileButton}`
When I click on element located `By.buttonName(Viewing as: Aflac)`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_alert1_downLoadOurApp}` becomes NOT_VISIBLE
When I wait until element located `${xpathFor_quickLinks}` contains text 'Quick Links'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_testCategoryforArticle}` becomes NOT_VISIBLE


When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_profileButton}` becomes VISIBLE
When I click on element located `${xpathFor_profileButton}`
When I wait `PT10S` with `PT05S` polling until element located `By.buttonName(Viewing as: Aflac)` becomes VISIBLE
When I click on element located `By.buttonName(View as: Demo Employer)`
When I click on element located `${xpathFor_mobProfileMenuCloseIcon}`

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_profileButton}` becomes VISIBLE
When I click on element located `${xpathFor_profileButton}`
When I wait `PT10S` with `PT05S` polling until element located `By.buttonName(Viewing as: Demo Employer)` becomes VISIBLE
When I click on element located `${xpathFor_mobProfileMenuCloseIcon}`

Examples:
|text|
|Alert 1:Download our app!|
