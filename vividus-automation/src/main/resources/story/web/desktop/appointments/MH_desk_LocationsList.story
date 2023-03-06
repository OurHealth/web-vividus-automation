Description: As a user, I want to be able to see the list of health center locations available to me so that I know where I can receive care and how those facilities can be contacted

Meta:

    @Epic PT-170[PT-390]
    @group smoketest
    @layout desktop
    @locations
    @Priority 1
    @issueId PT-390

Scenario: [Desktop][Location] Locations list

Given I am on the main application page
When I wait until element located `${xpathFor_signInHeader}` contains text '${text_SignIn}'
When I enter `${userName}` in field located `${userNameXpath}`
When I enter `${userPwd}` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE
When I click on element located `By.buttonName(Appointments)`
When I click on element located `${xpathFor_appointments_HCL}`
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/get-clinics`
Then the response code is equal to '200'
When I wait `PT30S` with `PT05S` polling until element located `${xpathFor_HCL_InHomePage}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobBreadcrumbHome}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_locationsInBreadcrumb}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_googleMaps_InHomePage}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HCL_colHeaderHealthCentre}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HCL_colHeaderPhone}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HCL_colHeaderAddress}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HCL_colHeaderHours}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HCL_clinic1}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HCL_clinic2}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HCL_clinic3}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_viewDetailsLink}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HCL_clinic1}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HCL_clinic2}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_address1}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_address2}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobgetDirectionsLink}` becomes VISIBLE
When I click on element located `${xpathFor_mobgetDirectionsLink}`
When I switch to window with title that contains `${text_directionsWindowTitle}`
When I close the current window
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_clinicPhNo}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_clinicTimings}` becomes VISIBLE
