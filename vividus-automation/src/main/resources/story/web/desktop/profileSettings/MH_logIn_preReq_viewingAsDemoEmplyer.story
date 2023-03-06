Description: As a user, I want to be able to switch between employer views to see different content and portal functionality associated with my employers
Meta:

    @Epic PT-170[Jira-PT-268]
    @group smoketest
    @layout desktop
    @profile
    @Priority 1
    @issueId PT-268

Scenario: [Desktop][Employer View] Change employer on Home Page

Given I am on the main application page
When I change window size to `1280x720`
When I wait until element located `${xpathFor_signInHeader}` contains text '${text_SignIn}'
When I enter `<empName>` in field located `${userNameXpath}`
When I enter `<empPwd>` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE
When I scroll context to TOP edge
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_userProfileButton}` becomes VISIBLE
When I click on element located `${xpathFor_userProfileButton}`
When I click on element located `${xpathFor_viewingAsDemoEmp}`

Examples:
|empName	|empPwd  |
|remployee1 |Default1|
