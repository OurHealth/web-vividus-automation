Description: As a user, I want to be able to access the WP using my own credentials to be identified and enter my personally customized space

Scenario: [Mobile][Login] Successful login pre-req steps

Meta:

    @Epic PT-170
    @pre-reqStory
    @layout chrome_phone

Given I am on the main application page
When I wait until element located `${xpathFor_signInHeader}` contains text 'Sign In'
When I enter `remployee9` in field located `${userNameXpath}`
When I enter `Default1` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_profileButton}` becomes VISIBLE
When I scroll context to TOP edge
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobHamburgerMenuIcon}` becomes VISIBLE
When I click on element located `${xpathFor_mobHamburgerMenuIcon}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobMenuMyHealth}` becomes VISIBLE
When I click on element located `${xpathFor_mobMenuMyHealth}`
