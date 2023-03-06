Description: As a patient/user, I want to be able to see information on the services provided by health centers so as to be more aware of my healthcare options and opportunities

Meta:

    @Epic PT-170[Jira-PT-238]
    @group critical_path
    @layout chrome_phone
    @articles
    @Priority 2
    @issueId PT-238

GivenStories: story/web/mobileView/logIn/MH_mob_LoginPrecondition.story

Scenario: [Mobile][Articles] Health Center Services

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobHamburgerMenuIcon}` becomes VISIBLE
When I click on element located `${xpathFor_mobHamburgerMenuIcon}`
When I click on element located `${xpathFor_mobMenuAppointments}`
When I click on element located `${xpathFor_appointmentHCS}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HCS_InHomePage}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `By.linkText(Home)` becomes VISIBLE
When I wait until element located `${xpathFor_HCS_InBreadCrum}` appears
When I wait until an element with the tag 'img' and attribute 'alt'='Health Center Services' appears
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HCS_InHomePage}` becomes VISIBLE
Then the text 'Pediatric Care (ages 2+)' exists
When I click on element located `By.linkText(Home)`
When I wait until an element with the tag 'img' and attribute 'alt'='${textwelcomeToMarathon}' appears
When I change context to element located `${xpathFor_quickLinks}` in scope of current context
When I click on element located `${xpathFor_HCS_InQuickLinks}`
When I reset context
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HCS_InHomePage}` becomes VISIBLE
