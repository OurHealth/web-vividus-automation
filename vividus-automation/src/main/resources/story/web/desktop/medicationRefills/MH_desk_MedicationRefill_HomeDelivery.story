Description: As a patient/user, I want to be able to request medicines to myself.


Meta:

    @Epic 645 - PT-1169
    @group extended
    @layout desktop
    @medication_refill
    @Priority 3
    @issueId PT-1169

Scenario: [Desktop][Medication Refill] Request other medication for Employee

Given I am on the main application page
When I enter `remployee2` in field located `${userNameXpath}`
When I enter `Default1` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MedicationRefills}` becomes VISIBLE
When I click on element located `${xpathFor_MedicationRefills}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MedicationRefillRequestHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Atorvastatin10mgTablet}` becomes VISIBLE
When I click on element located `${xpathFor_Atorvastatin10mgTablet}`
When I wait until state of element located `${xpathFor_SelectLocationForAtorvastatinTab}` is ENABLED
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SelectLocationForAtorvastatinTab}` becomes VISIBLE
When I click on element located `${xpathFor_SelectLocationForAtorvastatinTab}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SelectLocationDropDownHomeDeliveryOption}` becomes VISIBLE
When I click on element located `${xpathFor_SelectLocationDropDownHomeDeliveryOption}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ReviewAndSubmitRequest}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Atorvastatin10MgTabletInRevAndSubmitReq}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HomeDeliveryInRevAndSubmitReq}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HomeAddressInRevAndSubmitReq}` becomes NOT_VISIBLE
When I click on element located `${xpathFor_SubmitRefillRequestButtonEnabled}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_YouRequestedTheFollowingMedicationsSection}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Atorvastatin10MgTabletInRevAndSubmitReq}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_PickupAtHomeDeliveryInRevAndSubmitReq}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HomeAddressInRevAndSubmitReq}` becomes NOT_VISIBLE
