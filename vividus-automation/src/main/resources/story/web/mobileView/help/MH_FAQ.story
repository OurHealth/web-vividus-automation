Description: As a patient/user, I want to be able to see frequently asked questions to be more aware of the portal functionality and provided services
Meta:

@Epic PT-170[Jira-PT-234]
    @group smoketest
    @layout chrome_phone
    @SmokeTest
    @Priority 1

    GivenStories: story/web/mobileView/logIn/MH_mob_LoginPrecondition.story

Scenario: Scenario: [Mobile][Articles] FAQ


When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobHamburgerMenuIcon}` becomes VISIBLE
When I click on element located `${xpathFor_mobHamburgerMenuIcon}`

When I click on element located `${xpathFor_mobMenuHelp}`
When I click on element located `${xpathFor_mobMenuFAQ}`

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headingFAQ}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `By.linkText(Home)` becomes VISIBLE
When I wait until element located `${xpathFor_breadcrumbFAQ}` appears
When I wait until an element with the tag 'img' and attribute 'alt'='Frequently Asked Questions' appears
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headingFAQ}` becomes VISIBLE
Then the text 'answered some our most frequently asked questions' exists
When I click on element located `${xpathFor_textMarathonHealth}`
Then the text 'Who are the providers for Marathon Health?' exists
When I click on element located `${xpathFor_textMarathonHealth}`
Then the text 'Who are the providers for Marathon Health?' does not exist
