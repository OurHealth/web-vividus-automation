Description: As a patient/user, I want to be able to request medicines to child.


Meta:

    @Epic 645 - PT-1165
    @group critical_path
    @layout desktop
    @medication_refill
    @Priority 2
    @issueId PT-1165

Scenario: [Desktop][Medication Refill] Request medication for family member (Child)

Given I am on the main application page
When I enter `remployee2` in field located `${userNameXpath}`
When I enter `Default1` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MedicationRefills}` becomes VISIBLE
When I click on element located `${xpathFor_MedicationRefills}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MedicationRefillRequestHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MedRefillChildButton}` becomes VISIBLE
When I click on element located `${xpathFor_MedRefillChildButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ToMeetHIPAARequirementsTextMsg}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_WhatMedicationsDoYouNeedToRefill}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_OtherMedications}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MedicationNameInOthers}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MedicationdosageInOthers}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_WhereWouldYouLikeToPickUpYourMedication}` becomes VISIBLE
When I wait `PT30S` with `PT05S` polling until element located `${xpathFor_SelectLocationDropDownInOthers}` becomes VISIBLE
When I click on element located `${xpathFor_SubmitRefillRequestButtonEnabled}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CannotBeLeftBlankAtMedicationName}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ReviewAndSubmitRequest}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MedicationNameInOthers}` becomes VISIBLE
When I enter `DOLLO` in field located `${xpathFor_MedicationNameInOthers}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MedicationdosageInOthers}` becomes VISIBLE
When I enter `10` in field located `${xpathFor_MedicationdosageInOthers}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ReviewAndSubmitRequest}` becomes NOT_VISIBLE
When I wait `PT30S` with `PT05S` polling until element located `${xpathFor_SelectLocationInOthersInMedications}` becomes VISIBLE
When I click on element located `${xpathFor_SelectLocationInOthersInMedications}`
When I click on element located `${xpathFor_SelectLocationInOthersInMedications}`
When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_MarathonHealthWashingtonSquareLocation}` becomes VISIBLE
When I click on element located `${xpathFor_MarathonHealthWashingtonSquareLocation}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ReviewAndSubmitRequest}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MedNameInRevAndSubmit}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DosageInRevAndSubmit}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ClinicNameInRevAndSubmit}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ClinicAddressInRevAndSubmit}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_removeLink}` becomes VISIBLE
When I click on element located `${xpathFor_removeLink}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ReviewAndSubmitRequest}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_OtherMedications}` becomes VISIBLE
When I click on element located `${xpathFor_OtherMedications}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MedicationNameInOthers}` becomes VISIBLE
When I enter `DOLLO` in field located `${xpathFor_MedicationNameInOthers}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MedicationdosageInOthers}` becomes VISIBLE
When I enter `10` in field located `${xpathFor_MedicationdosageInOthers}`
When I wait `PT60S` with `PT20S` polling until element located `${xpathFor_SelectLocationInOthersInMedications}` becomes VISIBLE
When I click on element located `${xpathFor_SelectLocationInOthersInMedications}`
When I click on element located `${xpathFor_SelectLocationInOthersInMedications}`
When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_MarathonHealthWashingtonSquareLocation}` becomes VISIBLE
When I click on element located `${xpathFor_MarathonHealthWashingtonSquareLocation}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ReviewAndSubmitRequest}` becomes VISIBLE
When I click on element located `${xpathFor_SubmitRefillRequestButtonEnabled}`
When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/Messaging/medication-refill`
Then the response code is equal to '200'
When I wait `PT60S` with `PT10S` polling until element located `${xpathFor_YourMedicationRefillRequestWasSent}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_YouRequestedTheFollowingMedicationsSection}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MedNameInReqFollowingMed}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MedDosageInReqFollowingMed}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ClinicNameInReqFollowingMed}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ClinicAddressInReqFollowingMed}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_removeLink}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_messages}` becomes VISIBLE
When I click on element located `${xpathFor_messages}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_InboxInMessages}` becomes VISIBLE
When I click on element located `${xpathFor_InboxInMessages}`
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_SentInMessages}` becomes VISIBLE
When I click on element located `${xpathFor_SentInMessages}`
