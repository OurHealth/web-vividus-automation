Description: As a user, I want to be able to access the WP using my own credentials to be identified and enter my personally customized space

Scenario: [Mobile][Login] Successful login

Meta:

    @Epic PT-170[PT-188]
    @group smoketest
    @layout chrome_phone
    @articles
    @Priority 1


Given I am on the main application page
When I wait until element located `${xpathFor_signInHeader}` contains text 'Sign In'
When I enter `${userName1}` in field located `${userNameXpath}`
When I enter `${userPwd}` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_profileButton}` becomes VISIBLE
When I scroll context to TOP edge
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobHamburgerMenuIcon}` becomes VISIBLE
When I click on element located `${xpathFor_mobHamburgerMenuIcon}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobMenuMyHealth}` becomes VISIBLE
When I click on element located `${xpathFor_mobMenuMyHealth}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_cmdHealthSummaryInMyHealthMenu}` becomes VISIBLE
When I click on element located `${xpathFor_cmdHealthSummaryInMyHealthMenu}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerMedications}` becomes VISIBLE
