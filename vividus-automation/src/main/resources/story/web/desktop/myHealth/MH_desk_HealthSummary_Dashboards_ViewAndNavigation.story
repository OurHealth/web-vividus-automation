Description: As a user, I want to be able to see dashboards visualizing key health indicators, so that I could track the status and dynamics of my health indicators and identify health tendencies.


Meta:

    @Epic PT-170[PT-605]
    @group critical_path
    @layout desktop
    @MyHealth
    @Priority 2
    @issueId PT-605

Scenario: [Desktop][Health Summary: Dashboards] View and navigation

Given I am on the main application page
When I change window size to `1280x720`
When I wait until element located `${xpathFor_signInHeader}` contains text '${text_SignIn}'
When I enter `remployee5` in field located `${userNameXpath}`
When I enter `Default1` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_menuMyHealth}` becomes VISIBLE
When I click on element located `${xpathFor_menuMyHealth}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_cmdMyHealthDashboard}` becomes VISIBLE
When I click on element located `${xpathFor_cmdMyHealthDashboard}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerMyHealthDashboard}` becomes VISIBLE
When I click on element located `${xpathFor_headerMyHealthDashboard}`
When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/wellness/WellnessLog/get-dashboard`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectedTabDashboard}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_weightInDashboard}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BMIInDashboard}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_waistSizeInDashboard}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_LDLCholesterolInDashboard}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HDLCholesterolInDashboard}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TotalCholesterolInDashboard}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Total/HDLCholesterolRatioInDashboard}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HemoglobinA1cInDashboard}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BloodPressureInDashboard}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BloodGlucoseInDashboard}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_showGraphs}` becomes VISIBLE
When I click on element located `${xpathFor_showGraphs}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_hideGraphs}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BMIGraphInDashboard}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_waistSizeGraphInDashboard}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_LDLCholesterolGraphInDashboard}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HDLCholesterolGraphInDashboard}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TotalCholesterolGraphInDashboard}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TotalCholesterolGraphInDashboard}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Total/HDLCholesterolRatioGraphInDashboard}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HemoglobinA1cGraphInDashboard}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BloodPressureGraphInDashboard}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BloodGlucoseGraphInDashboard}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_hideGraphs}` becomes VISIBLE
When I click on element located `${xpathFor_hideGraphs}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_weightGraphInDashboard}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BMIGraphInDashboard}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectedTabDashboard}` becomes VISIBLE
