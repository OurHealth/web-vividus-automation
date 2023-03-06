Description: As a user, I want to be able to see the information on my recorded medications to be more aware of my health

Meta:

    @Epic PT-170[PT-621]
    @group critical_path
    @layout desktop
    @MyHealth
    @Priority 2
    @issueId PT-621

Scenario: [Desktop][Health Summary: Medications] View and Navigation

Given I am on the main application page
When I change window size to `1280x720`
When I wait until element located `${xpathFor_signInHeader}` contains text '${text_SignIn}'
When I enter `remployee1` in field located `${userNameXpath}`
When I enter `Default1` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_menuMyHealth}` becomes VISIBLE
When I click on element located `${xpathFor_menuMyHealth}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_cmdHealthSummaryInMyHealthMenu}` becomes VISIBLE
When I click on element located `${xpathFor_cmdHealthSummaryInMyHealthMenu}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerMedications}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_healthSummarySectionSelected}` becomes VISIBLE
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/wellness/WellnessLog/medications`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_searchField}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortByMedication}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DisplayHistoricalMedicationsLink}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_printLink}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_listOfMedicines}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MedicineName}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MedicineInstructions}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Prescribedby}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortByMedication}` becomes VISIBLE
When I click on element located `${xpathFor_sortByMedication}`
Then elements located `${xpathFor_listOfMedicinesInFirstColumn}` are sorted by text in CASE_INSENSITIVE_DESCENDING order
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_searchField}` becomes VISIBLE
When I enter `medrol` in field located `${xpathFor_searchField}`
When I wait until element located `${xpathFor_listOfMedicinesInFirstColumn}` contains text 'Medrol'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_searchField}` becomes VISIBLE
When I clear field located `${xpathFor_searchField}` using keyboard
When I enter `test` in field located `${xpathFor_searchField}`
When I wait until element located `${xpathFor_NoMedicationsFound}` contains text 'No medications found.'
When I clear field located `${xpathFor_searchField}` using keyboard
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DisplayHistoricalMedicationsLink}` becomes VISIBLE
When I click on element located `${xpathFor_DisplayHistoricalMedicationsLink}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_hideHistoricalMedicationsLink}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_listOfMedicines}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_updatedMedicineName}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MedicineInstructionsAsDirected}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_PrescribedDoctor}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortByMedication}` becomes VISIBLE
When I click on element located `${xpathFor_sortByMedication}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_listOfMedicinesInFirstColumn}` becomes VISIBLE
Then elements located `${xpathFor_listOfMedicinesInFirstColumn}` are sorted by text in CASE_INSENSITIVE_ASCENDING order
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_searchField}` becomes VISIBLE
When I enter `Lialda` in field located `${xpathFor_searchField}`
When I wait until element located `${xpathFor_listOfMedicinesInFirstColumn}` contains text 'Lialda'
When I clear field located `${xpathFor_searchField}` using keyboard
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_hideHistoricalMedicationsLink}` becomes VISIBLE
When I click on element located `${xpathFor_hideHistoricalMedicationsLink}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_listOfMedicines}` becomes VISIBLE
