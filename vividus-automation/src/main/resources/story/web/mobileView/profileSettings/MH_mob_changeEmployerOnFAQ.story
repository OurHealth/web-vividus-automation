Description: As a user, I want to be able to switch between employer views to see different content and portal functionality associated with my employers
Meta:

    @Epic PT-170[Jira-PT-272]
    @group critical_path
    @layout chrome_phone
    @profile
    @Priority 1


Scenario: [Mobile][Employer View] Change employer on FAQ screen

Given I am on the main application page
When I wait until element located `${xpathFor_signInHeader}` contains text 'Sign In'
When I enter `<empName>` in field located `${userNameXpath}`
When I enter `<empPwd>` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_profileButton}` becomes VISIBLE
When I scroll context to TOP edge
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobHamburgerMenuIcon}` becomes VISIBLE
When I click on element located `${xpathFor_mobHamburgerMenuIcon}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobMenuHelp}` becomes VISIBLE
When I click on element located `${xpathFor_mobMenuHelp}`
When I click on element located `${xpathFor_mobMenuFAQ}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_shruti'squestions}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_profileButton}` becomes VISIBLE
When I click on element located `${xpathFor_profileButton}`
When I wait `PT10S` with `PT05S` polling until element located `By.buttonName(Viewing as: Demo Employer)` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `By.buttonName(View as: Aflac)` becomes VISIBLE
When I click on element located `By.buttonName(View as: Aflac)`
When I click on element located `${xpathFor_mobProfileMenuCloseIcon}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_News}` becomes VISIBLE
When I scroll context to TOP edge
When I click on element located `${xpathFor_profileButton}`
When I wait until element located `By.buttonName(Viewing as: Aflac)` appears
When I click on element located `${xpathFor_mobProfileMenuCloseIcon}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobHamburgerMenuIcon}` becomes VISIBLE
When I click on element located `${xpathFor_mobHamburgerMenuIcon}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobMenuHelp}` becomes VISIBLE
When I click on element located `${xpathFor_mobMenuFAQ}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_shruti'squestions}` becomes NOT_VISIBLE
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
|empName	|empPwd   |
|remployee1 |Default1 |
