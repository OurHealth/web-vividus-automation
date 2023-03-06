Description: As a user, I want to be able to have access to other external resources that may be helpful or provide valuable knowledge to my daily healthcare

Meta:

    @Epic PT-645[PT-967]
    @group smoketest
    @layout desktop
    @resources
    @Priority 1
    @issueId PT-967

GivenStories: story/web/desktop/logIn/MH_Login.story

Scenario: [Desktop][Resources] View and navigation

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ResourcesMenu}` becomes VISIBLE
When I click on element located `${xpathFor_ResourcesMenu}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ViewAllResources}` becomes VISIBLE
When I click on element located `${xpathFor_ViewAllResources}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ResourcesHeader}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_HealthwiseBanner}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_WellnessWorkshopsBanner}` becomes VISIBLE
When I click on element located `${xpathFor_HealthwiseBanner}`
When I switch to a new window
Then the page with the URL containing 'https://www.healthwise.net/marathon-health/' is loaded
When I close the current window
When I switch to window with title that contains `Healthwise - Marathon Health`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HealthwiseHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TxtMsgHealthwiseWillOpenInANewWindow}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HealthwiseLink}` becomes VISIBLE
When I click on element located `${xpathFor_HealthwiseLink}`
When I switch to a new window
Then the page with the URL containing 'https://www.healthwise.net/marathon-health/' is loaded
When I close the current window
When I switch to window with title that contains `Healthwise - Marathon Health`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HealthwiseHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ResourcesBreadcrumb}` becomes VISIBLE
When I click on element located `${xpathFor_ResourcesBreadcrumb}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ResourcesHeader}` becomes VISIBLE
When I switch to window with title that contains `Resources - Marathon Health`


When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ResourcesHeader}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_wellnessWorkshopsBanner}` becomes VISIBLE
When I click on element located `${xpathFor_wellnessWorkshopsBanner}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_WellnessWorkshops}` becomes VISIBLE
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/Resource/categories`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_InProgressIncentivizedWorkshops}` becomes VISIBLE
