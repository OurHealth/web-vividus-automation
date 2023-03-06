Description: As a patient/user, I want to be able to request medicines to myself.


Meta:

    @Epic 645 - PT-1170
    @group extended
    @layout desktop
    @medication_refill
    @Priority 1
    @issueId PT-1170

Scenario: [Desktop][Medication Refill] No prescribed medications

Given I am on the main application page
When I enter `remployee8` in field located `${userNameXpath}`
When I enter `Default1` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MedicationRefills}` becomes VISIBLE
When I click on element located `${xpathFor_MedicationRefills}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MedicationRefillRequestHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_NoActiveMedicationsAvailableTextMsg}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_OtherMedications}` becomes VISIBLE
