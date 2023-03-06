Description: As a patient/user, I want to be able to request medicines to spouse.


Meta:

    @Epic [645] PT-1167
    @group critical_path
    @layout desktop
    @medication_refill
    @Priority 2
    @issueId PT-1167

Scenario: [Desktop][Medication Refill] Request several medications for family member (Spouse)

Given I am on the main application page
When I enter `remployee2` in field located `${userNameXpath}`
When I enter `Default1` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MedicationRefills}` becomes VISIBLE
When I click on element located `${xpathFor_MedicationRefills}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MedicationRefillRequestHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Spouse2InMedFor}` becomes VISIBLE
When I click on element located `${xpathFor_Spouse2InMedFor}`
When I wait until state of element located `${xpathFor_AddAnotherMedication}` is DISABLED
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MedicationNameInOthers}` becomes VISIBLE
When I enter `DOLLO` in field located `${xpathFor_MedicationNameInOthers}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MedicationdosageInOthers}` becomes VISIBLE
When I enter `10` in field located `${xpathFor_MedicationdosageInOthers}`
When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_SelectLocationInOthersInMedications}` becomes VISIBLE
When I wait until state of element located `${xpathFor_SelectLocationInOthersInMedications}` is ENABLED
When I click on element located `${xpathFor_SelectLocationInOthersInMedications}`
When I click on element located `${xpathFor_SelectLocationInOthersInMedications}`
When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_MarathonHealthGreenwoodSpringsLocation}` becomes VISIBLE
When I click on element located `${xpathFor_MarathonHealthGreenwoodSpringsLocation}`
When I wait until state of element located `${xpathFor_AddAnotherMedication}` is ENABLED
When I click on element located `${xpathFor_AddAnotherMedication}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MedicationNameInOthers}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MedicationdosageInOthers}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MedicationNameInAddAnotherMedication}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DosageInAddAnotherMedication}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_WhereWouldYouLikeToPickUpYourMedicationInAnotherMedication}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SelectLocationInAddAnotherMedication}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MedicationNameInAddAnotherMedication}` becomes VISIBLE
When I enter `PARACETMOL` in field located `${xpathFor_MedicationNameInAddAnotherMedication}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DosageInAddAnotherMedication}` becomes VISIBLE
When I enter `20` in field located `${xpathFor_DosageInAddAnotherMedication}`
When I wait until state of element located `${xpathFor_SelectLocationInOthersInAddAnotherMedications}` is ENABLED
When I wait `PT30S` with `PT05S` polling until element located `${xpathFor_SelectLocationInOthersInAddAnotherMedications}` becomes VISIBLE
When I click on element located `${xpathFor_SelectLocationInOthersInAddAnotherMedications}`
When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_MarathonHealthWashingtonSquareLocation}` becomes VISIBLE
When I click on element located `${xpathFor_MarathonHealthWashingtonSquareLocation}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ReviewAndSubmitRequest}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MedNameInRevAndSubmit}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DosageInRevAndSubmit}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MedName2InRevAndSubmit}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Dosage2InRevAndSubmit}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ClinicNameInRevAndSubmit}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ClinicName2InRevAndSubmit}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ClinicAddressInRevAndSubmit}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ClinicAddress2InRevAndSubmit}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_NotesForThePharmacist}` becomes VISIBLE
When I enter `Medication Refill Request for Spouse` in field located `${xpathFor_NotesForThePharmacist}`
When I click on element located `${xpathFor_SubmitRefillRequestButtonEnabled}`
When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/Messaging/medication-refill`
Then the response code is equal to '200'
When I wait `PT60S` with `PT10S` polling until element located `${xpathFor_YourMedicationRefillRequestWasSent}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_YouRequestedTheFollowingMedicationsSection}` becomes VISIBLE
When I wait `PT60S` with `PT10S` polling until element located `${xpathFor_MedName1InRequestedFollowingMed}` becomes VISIBLE
When I wait `PT60S` with `PT10S` polling until element located `${xpathFor_MedName2InRequestedFollowingMed}` becomes VISIBLE
When I wait `PT60S` with `PT10S` polling until element located `${xpathFor_ClinicLocation1InRequestedFollowingMed}` becomes VISIBLE
When I wait `PT60S` with `PT10S` polling until element located `${xpathFor_ClinicLocation2InRequestedFollowingMed}` becomes VISIBLE
When I wait `PT60S` with `PT10S` polling until element located `${xpathFor_ClinicAddress1InRequestedFollowingMed}` becomes VISIBLE
When I wait `PT60S` with `PT10S` polling until element located `${xpathFor_ClinicAddress2InRequestedFollowingMed}` becomes VISIBLE
