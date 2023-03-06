Description: As a user, I want to be able to see the list of health center locations available to me so that I know where I can receive care and how those facilities can be contacted

Meta:

    @Epic PT-170[PT-392]
    @group smoketest
    @layout chrome_phone
    @locations
    @Priority 1
    @issueId PT-392

    GivenStories: story/web/mobileView/logIn/MH_mob_LoginPrecondition.story

Scenario: [Mobile][Location] Locations list
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobHamburgerMenuIcon}` becomes VISIBLE
When I click on element located `${xpathFor_mobHamburgerMenuIcon}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobMenuAppointments}` becomes VISIBLE
When I click on element located `${xpathFor_mobMenuAppointments}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobAppointments_HCL}` becomes VISIBLE
When I click on element located `${xpathFor_mobAppointments_HCL}`
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/get-clinics`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HCL_InHomePage}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobBreadcrumbHome}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_locationsInBreadcrumb}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_googleMaps_InHomePage}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HCL_mobVirtualClinic1}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HCL_mobVirtualClinic2}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HCL_mobClinic3}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HCL_mobVirtualClinic1}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HCL_mobVirtualClinic2}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobAddress1}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobgetDirectionsLink}` becomes VISIBLE
When I click on element located `${xpathFor_mobgetDirectionsLink}`
When I switch to window with title that contains `${text_directionsWindowTitle}`
When I close the current window
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobClinicPhNo}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobClinicTimings}` becomes VISIBLE
