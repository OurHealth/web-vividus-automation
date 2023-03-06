Description: As a user, I want to be able to see the list of health center locations available to me so that I know where I can receive care and how those facilities can be contacted
Meta:

    @Epic PT-170[PT-395]
    @group smoketest
    @layout chrome_phone
    @locations
    @Priority 1
    @issueId PT-395

Scenario: [Mobile][Location] Update locations list based on employer view

Given I am on the main application page
When I wait until element located `${xpathFor_signInHeader}` contains text 'Sign In'
When I enter `<empName>` in field located `${userNameXpath}`
When I enter `<empPwd>` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobHamburgerMenuIcon}` becomes VISIBLE
When I click on element located `${xpathFor_mobHamburgerMenuIcon}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobMenuAppointments}` becomes VISIBLE
When I click on element located `${xpathFor_mobMenuAppointments}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobAppointments_HCL}` becomes VISIBLE
When I click on element located `${xpathFor_mobAppointments_HCL}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HCL_InHomePage}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HCL_mobVirtualClinic1}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HCL_mobVirtualClinic2}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HCL_mobClinic3}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_profileButton}` becomes VISIBLE
When I click on element located `${xpathFor_profileButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_viewAsAflac}` becomes VISIBLE
When I click on element located `${xpathFor_viewAsAflac}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_News}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobHamburgerMenuIcon}` becomes VISIBLE
When I click on element located `${xpathFor_mobHamburgerMenuIcon}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobAppointments_HCL}` becomes VISIBLE
When I click on element located `${xpathFor_mobAppointments_HCL}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HCL_InHomePage}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HCL_mobAflacClinic1}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HCL_mobAflacClinic2}` becomes VISIBLE


Examples:
|empName   |empPwd  |
|remployee1|Default1|
