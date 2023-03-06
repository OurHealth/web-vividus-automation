Description: As a patient/user, I want to be able to see frequently asked questions to be more aware of the portal functionality and provided services
Meta:

@Epic PT-170[Jira-PT-234]
    @group critical_path
    @layout desktop
    @articles
    @Priority 2
    @issueId PT-234

    GivenStories: story/web/desktop/logIn/MH_Login.story

Scenario: Scenario: [Desktop][Articles] FAQ

When I wait `PT30S` with `PT05S` polling until element located `${xpathFor_menuHelp}` becomes VISIBLE
When I click on all elements located `${xpathFor_menuHelp}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_MenuFAQ}` becomes VISIBLE
When I click on all elements located `${xpathFor_MenuFAQ}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headingFAQ}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `By.linkText(Home)` becomes VISIBLE
When I wait until element located `${xpathFor_breadcrumbFAQ}` appears
When I wait until an element with the tag 'img' and attribute 'alt'='${textFAQ}' appears
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headingFAQ}` becomes VISIBLE
Then the text '${textAnsweredSomeFAQs}' exists
When I click on element located `${xpathFor_textMarathonHealth}`
Then the text '${textwhoAreTheProvForMH}' exists
When I click on element located `${xpathFor_textMarathonHealth}`
Then the text '${textwhoAreTheProvForMH}' does not exist
