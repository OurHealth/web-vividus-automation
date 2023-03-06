Description: As a user, I want to be able to see dashboards visualizing key health indicators, so that I could track the status and dynamics of my health indicators and identify health tendencies.


Meta:

    @Epic PT-170[PT-610]
    @group critical_path
    @layout desktop
    @MyHealth
    @Priority 2
    @issueId PT-610


Scenario: [Desktop][Health Summary: Dashboards] Empty View

Given I am on the main application page
When I change window size to `1280x720`
When I wait until element located `${xpathFor_signInHeader}` contains text '${text_SignIn}'
When I enter `remployee9` in field located `${userNameXpath}`
When I enter `Default1` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_menuMyHealth}` becomes VISIBLE
When I click on element located `${xpathFor_menuMyHealth}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_cmdMyHealthDashboard}` becomes VISIBLE
When I click on element located `${xpathFor_cmdMyHealthDashboard}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerMyHealthDashboard}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_weightInDashboard}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_waistSizeInDashboard}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BloodGlucoseInDashboard}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_showGraphs}` becomes VISIBLE
When I click on element located `${xpathFor_showGraphs}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_weightGraphInDashboard}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_waistSizeGraphInDashboard}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BloodPressureGraphInDashboard}` becomes NOT_VISIBLE

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_userProfileButton}` becomes VISIBLE
When I click on element located `${xpathFor_userProfileButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SignOutButtonInProfile}` becomes VISIBLE
When I click on element located `${xpathFor_SignOutButtonInProfile}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_signInHeader}` becomes VISIBLE
When I enter `remployee8` in field located `${userNameXpath}`
When I enter `Default1` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_menuMyHealth}` becomes VISIBLE
When I click on element located `${xpathFor_menuMyHealth}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_cmdMyHealthDashboard}` becomes VISIBLE
When I click on element located `${xpathFor_cmdMyHealthDashboard}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerMyHealthDashboard}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_noInformationAvailableMsg}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_showGraphs}` becomes NOT_VISIBLE
