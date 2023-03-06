Description: As a user, I want to be able to see dashboards visualizing key health indicators, so that I could track the status and dynamics of my health indicators and identify health tendencies.


Meta:

    @Epic PT-170[PT-606]
    @group critical_path
    @layout chrome_phone
    @MyHealth
    @Priority 2

GivenStories: story/web/mobileView/logIn/MH_mob_HealthSummary_LogIn.story

Scenario: [Mobile][Health Summary: Dashboards] View and navigation

!-- Given I am on the main application page
!-- When I wait until element located `${xpathFor_signInHeader}` contains text 'Sign In'
!-- When I enter `remployee5` in field located `${userNameXpath}`
!-- When I enter `Default1` in field located `${pwdXpath}`
!-- When I click on element located `${xpathFor_signInButton}`
!-- When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_profileButton}` becomes VISIBLE
!-- When I scroll context to TOP edge
!-- When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobHamburgerMenuIcon}` becomes VISIBLE
!-- When I click on element located `${xpathFor_mobHamburgerMenuIcon}`
!-- When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobMenuMyHealth}` becomes VISIBLE
!-- When I click on element located `${xpathFor_mobMenuMyHealth}`



When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobCMDMyHealthDashboard}` becomes VISIBLE
When I click on element located `${xpathFor_mobCMDMyHealthDashboard}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerMyHealthDashboard}` becomes VISIBLE
When I click on element located `${xpathFor_headerMyHealthDashboard}`


When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/wellness/WellnessLog/get-dashboard`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectedTabDashboardInMobView}` becomes VISIBLE
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
Then number of ENABLED elements found by `${xpathFor_mobShowGraph}` is = `10`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobWeightShowGraph}` becomes VISIBLE
When I click on element located `${xpathFor_mobWeightShowGraph}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobWeightHideGraph}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_weightGraphInDashboard}` becomes VISIBLE
When I click on element located `${xpathFor_mobWeightHideGraph}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobWeightShowGraph}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_weightGraphInDashboard}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobBMIShowGraph}` becomes VISIBLE
When I click on element located `${xpathFor_mobBMIShowGraph}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BMIGraphInDashboard}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobWaistSizeShowGraph}` becomes VISIBLE
When I click on element located `${xpathFor_mobWaistSizeShowGraph}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_waistSizeGraphInDashboard}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobLDLCholesterolShowGraph}` becomes VISIBLE
When I click on element located `${xpathFor_mobLDLCholesterolShowGraph}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_LDLCholesterolGraphInDashboard}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobHDLCholesterolShowGraph}` becomes VISIBLE
When I click on element located `${xpathFor_mobHDLCholesterolShowGraph}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HDLCholesterolGraphInDashboard}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobTotalCholesterolShowGraph}` becomes VISIBLE
When I click on element located `${xpathFor_mobTotalCholesterolShowGraph}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TotalCholesterolGraphInDashboard}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobTotal/HDLCholesterolRatioShowGraph}` becomes VISIBLE
When I click on element located `${xpathFor_mobTotal/HDLCholesterolRatioShowGraph}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Total/HDLCholesterolRatioGraphInDashboard}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobHemoglobinA1cShowGraph}` becomes VISIBLE
When I click on element located `${xpathFor_mobHemoglobinA1cShowGraph}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HemoglobinA1cGraphInDashboard}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobBloodPressureShowGraph}` becomes VISIBLE
When I click on element located `${xpathFor_mobBloodPressureShowGraph}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BloodPressureGraphInDashboard}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobBloodGlucoseShowGraph}` becomes VISIBLE
When I click on element located `${xpathFor_mobBloodGlucoseShowGraph}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BloodGlucoseGraphInDashboard}` becomes VISIBLE
