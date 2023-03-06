Description: As a user, I want to be able to see my recommended quality measures to follow those healthcare guidelines and get healthier


Meta:

    @Epic PT-645[PT-1037]
    @group exteneded
    @layout desktop
    @MyHealth
    @Priority 3
    @issueId PT-1037

Scenario: [Desktop][Care Guidelines] Empty view

Given I am on the main application page
When I wait until element located `${xpathFor_signInHeader}` contains text '${text_SignIn}'
When I enter `remployee10` in field located `${userNameXpath}`
When I enter `Default1` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_menuMyHealth}` becomes VISIBLE
When I click on element located `${xpathFor_menuMyHealth}`
When I click on element located `${xpathFor_CareGuidelines}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MyHealthCareGuidelinesHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CareGuidelinesSelectedInMenu}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TitleYourRecommendedCareGuidelines}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_NoCareGuidelinesFoundMsg}` becomes VISIBLE
