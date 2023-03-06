Description: As a patient/user, I want to be able to request medicines to myself.


Meta:

    @Epic 645 - PT-1163
    @group critical_path
    @layout desktop
    @medication_refill
    @Priority 2
    @issueId PT-1163

Scenario: [Desktop][Medication Refill] Request for several medications

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
When I wait `PT30S` with `PT15S` polling until element located `${xpathFor_SelectLocationDropDown}` becomes VISIBLE
When I click on element located `${xpathFor_SelectLocationDropDown}`
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_SelectLocationDropDownGreenwoodSpringsOption}` becomes VISIBLE
When I click on element located `${xpathFor_SelectLocationDropDownGreenwoodSpringsOption}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_OtherMedications}` becomes VISIBLE
When I click on element located `${xpathFor_OtherMedications}`
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_SelectLocationInOtherMed}` becomes VISIBLE
When I click on element located `${xpathFor_SelectLocationInOtherMed}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_OtherInSelectLocation}` becomes VISIBLE
When I click on element located `${xpathFor_OtherInSelectLocation}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MedicationNameInOthers}` becomes VISIBLE
When I enter `DOLLO` in field located `${xpathFor_MedicationNameInOthers}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MedicationdosageInOthers}` becomes VISIBLE
When I enter `10` in field located `${xpathFor_MedicationdosageInOthers}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MedicationPharmacyNameInOthers}` becomes VISIBLE
When I enter `APPOLLO` in field located `${xpathFor_MedicationPharmacyNameInOthers}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MedicationPharmacyAddressInOthers}` becomes VISIBLE
When I enter `HYDERABAD` in field located `${xpathFor_MedicationPharmacyAddressInOthers}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ReviewAndSubmitRequest}` becomes VISIBLE
When I click on element located `${xpathFor_SubmitRefillRequestButtonEnabled}`
When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/Messaging/medication-refill`
Then the response code is equal to '200'
When I scroll context to TOP edge
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_YourMedicationRefillRequestWasSent}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_YouRequestedTheFollowingMedicationsSection}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Atorvastatin10mgTabletInMedRefillReqSection}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_PickupAtInMedRefillReqSection}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MedNameInReqFollowingMed}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MedDosageInReqFollowingMed}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_PickupAtInReqFollowingMed}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_removeLink}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_messages}` becomes VISIBLE
When I click on element located `${xpathFor_messages}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_InboxInMessages}` becomes VISIBLE
When I click on element located `${xpathFor_InboxInMessages}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SentInMessages}` becomes VISIBLE
When I click on element located `${xpathFor_SentInMessages}`
