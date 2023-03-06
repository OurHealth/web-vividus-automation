Description: As a patient/user, I want to be able to request medicines to myself.


Meta:

    @Epic 645 - PT-1157
    @group smoketest
    @layout desktop
    @medication_refill
    @Priority 1
    @issueId PT-1157

Scenario: [Desktop][Medication Refill] Request medication for Employee

Given I am on the main application page
When I enter `remployee2` in field located `${userNameXpath}`
When I enter `Default1` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MedicationRefills}` becomes VISIBLE
When I click on element located `${xpathFor_MedicationRefills}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MedicationRefillRequestHeader}` becomes VISIBLE
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/healthsummary/personal-pharmacies?userId=1217089`
Then the response code is equal to '200'
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/healthsummary/personal-pharmacies?userId=1217089`
Then the response code is equal to '200'
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/healthsummary/user/get-family-members`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_WhoIsTheMedicationFor}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_FamilyMemEmployee2}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_FamilyMemChild2}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_FamilyMemDependent2}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_FamilyMemSpouse2}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_WhatMedicationsDoYouNeedToRefill}` becomes VISIBLE
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_Atorvastatin10mgTablet}` becomes VISIBLE
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_Take1TabletEveryDay}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Prescribed}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_OtherTabletsOption}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DoYouHaveAnyNotesForThePharmacist}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_NotesForThePharmacist}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SubmitRefillRequestButtonDisabled}` becomes VISIBLE
When I click on element located `${xpathFor_Atorvastatin10mgTablet}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_WhereWouldYouLikeToPickUpYourMedication}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SelectLocationDropDown}` becomes VISIBLE
When I click on element located `${xpathFor_SelectLocationDropDown}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SelectLocationDropDownGreenwoodSpringsOption}` becomes VISIBLE
When I click on element located `${xpathFor_SelectLocationDropDownGreenwoodSpringsOption}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ReviewAndSubmitRequest}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Atorvastatin10mgTabletInReviewAndSubmit}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_PickupAtInReviewAndSubmit}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RemoveLinkInReviewAndSubmit}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SubmitRefillRequestButtonEnabled}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_removeLink}` becomes VISIBLE
When I click on element located `${xpathFor_removeLink}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ReviewAndSubmitRequest}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_removeLink}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Atorvastatin10MgTabletSelected}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Atorvastatin10mgTablet}` becomes VISIBLE
When I click on element located `${xpathFor_Atorvastatin10mgTablet}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ReviewAndSubmitRequest}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_removeLink}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Atorvastatin10mgTablet}` becomes VISIBLE
When I click on element located `${xpathFor_Atorvastatin10mgTablet}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ReviewAndSubmitRequest}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Atorvastatin10mgTablet}` becomes VISIBLE
When I click on element located `${xpathFor_Atorvastatin10mgTablet}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SubmitRefillRequestButtonEnabled}` becomes VISIBLE
When I click on element located `${xpathFor_SubmitRefillRequestButtonEnabled}`
When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/Messaging/medication-refill`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_YourMedicationRefillRequestWasSent}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_YouRequestedTheFollowingMedicationsSection}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Atorvastatin10mgTabletInMedRefillReqSection}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_PickupAtInMedRefillReqSection}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_removeLink}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_messages}` becomes VISIBLE
When I click on element located `${xpathFor_messages}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_InboxInMessages}` becomes VISIBLE
When I click on element located `${xpathFor_InboxInMessages}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SentInMessages}` becomes VISIBLE
When I click on element located `${xpathFor_SentInMessages}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_clickOnFirstMessage}` becomes VISIBLE
When I wait `PT60S` with `PT15S` polling until element located `${xpathFor_Atorvastatin10mgTabletInMessages}` becomes VISIBLE
