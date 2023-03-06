Description: As a user, I want to be able to see the list of health center locations available to me so that I know where I can receive care and how those facilities can be contacted

Meta:

    @Epic PT-170[PT-397]
    @group critical_path
    @layout chrome_phone
    @locations
    @Priority 2
    @issueId PT-397

    GivenStories: story/web/mobileView/logIn/MH_mob_LoginPrecondition.story

Scenario: [Mobile][Location] Locations Details
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobHamburgerMenuIcon}` becomes VISIBLE
When I click on element located `${xpathFor_mobHamburgerMenuIcon}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobMenuAppointments}` becomes VISIBLE
When I click on element located `${xpathFor_mobMenuAppointments}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobAppointments_HCL}` becomes VISIBLE
When I click on element located `${xpathFor_mobAppointments_HCL}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HCL_InHomePage}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_nonVirtualClinicInMobView}` becomes VISIBLE
When I click on element located `${xpathFor_nonVirtualClinicInMobView}`
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com//clinic/get-clinic?clinicId=56`
Then the response code is equal to '200'
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_detailsOfNonVirtualClinic}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_backToLocationsLinkInMobView}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_detailsOfNonVirtualClinic}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_contactInfoAndDetails}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_healthCenterPhone}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_clinicPhone}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_clinicAddress}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_clinicAddressInfo}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${getDirectionsLinktext}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_hoursTitle}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_clinicHours}` becomes VISIBLE
When I scroll context to BOTTOM edge
When I scroll element located `${xpathFor_providersTitle}` into view
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_healthCoaches}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_clinicInMap}` becomes VISIBLE
When I scroll context to TOP edge
When I wait `PT15S` with `PT05S` polling until element located `${getDirectionsLinktext}` becomes VISIBLE
When I click on element located `${getDirectionsLinktext}`
When I switch to window with title that contains `Google Maps`
When I close the current window
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_backToLocationsLinkInMobView}` becomes VISIBLE
When I click on element located `${xpathFor_backToLocationsLinkInMobView}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HCL_InHomePage}` becomes VISIBLE
