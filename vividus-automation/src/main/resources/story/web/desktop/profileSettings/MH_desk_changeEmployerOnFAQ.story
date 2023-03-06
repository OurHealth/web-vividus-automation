Description: As a user, I want to be able to switch between employer views to see different content and portal functionality associated with my employers
Meta:

    @Epic PT-170[Jira-PT-271]
    @group critical_path
    @layout desktop
    @critical_path
    @profile
    @Priority 2
    @issueId PT-271

Scenario: [Desktop][Employer View] Change employer on FAQ screen

Given I am on the main application page
When I change window size to `1280x720`
When I wait until element located `${xpathFor_signInHeader}` contains text '${text_SignIn}'
When I enter `<empName>` in field located `${userNameXpath}`
When I enter `<empPwd>` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE
When I scroll context to TOP edge
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_menuHelp}` becomes VISIBLE
When I click on element located `${xpathFor_menuHelp}`
When I click on element located `${xpathFor_MenuFAQ}`
When I scroll context to BOTTOM edge
When I wait `PT30S` with `PT05S` polling until element located `${xpathFor_shruti'squestions}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_userProfileButton}` becomes VISIBLE
When I click on element located `${xpathFor_userProfileButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_viewingAsDemoEmp}` becomes VISIBLE
When I click on element located `${xpathFor_viewingAsDemoEmp}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_userProfileButton}` becomes VISIBLE
When I click on element located `${xpathFor_userProfileButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_viewAsAflac}` becomes VISIBLE
When I click on element located `${xpathFor_viewAsAflac}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE
When I click on element located `${xpathFor_userProfileButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_viewingAsAflac}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_menuHelp}` becomes VISIBLE
When I click on element located `${xpathFor_menuHelp}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_shruti'squestions}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_userProfileButton}` becomes VISIBLE
When I click on element located `${xpathFor_userProfileButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_userProfileButton}` becomes VISIBLE
When I click on element located `${xpathFor_userProfileButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_viewAsDemoEmp}` becomes VISIBLE
When I click on element located `${xpathFor_viewAsDemoEmp}`

Examples:
|empName	|empPwd  |
|remployee1 |Default1|
