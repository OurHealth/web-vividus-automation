Description: As a user, I want to be able to see the information on my recorded medications to be more aware of my health

Meta:

    @Epic PT-170[PT-622]
    @group critical_path
    @layout chrome_phone
    @MyHealth
    @Priority 2

Scenario: [Mobile][Health Summary: Medications] View and Navigation

Given I am on the main application page
When I wait until element located `${xpathFor_signInHeader}` contains text 'Sign In'
When I enter `remployee1` in field located `${userNameXpath}`
When I enter `Default1` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_profileButton}` becomes VISIBLE
When I scroll context to TOP edge
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobHamburgerMenuIcon}` becomes VISIBLE
When I click on element located `${xpathFor_mobHamburgerMenuIcon}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobMenuMyHealth}` becomes VISIBLE
When I click on element located `${xpathFor_mobMenuMyHealth}`


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
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_listOfMedicinesDisplayInMob}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MedicineNameInMob}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MedicineInstructions}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_PrescribedbyInMob}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortByMedication}` becomes VISIBLE
When I click on element located `${xpathFor_sortByMedication}`
Then elements located `${xpathFor_listOfMedicinesDisplayInMob}` are sorted by text in CASE_INSENSITIVE_DESCENDING order
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_searchField}` becomes VISIBLE
When I enter `medrol` in field located `${xpathFor_searchField}`
When I wait until element located `${xpathFor_listOfMedicinesDisplayInMob}` contains text 'Medrol'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_searchField}` becomes VISIBLE
When I clear field located `${xpathFor_searchField}` using keyboard
When I enter `test` in field located `${xpathFor_searchField}`
When I wait until element located `${xpathFor_NoMedicationsFound}` contains text 'No medications found.'
When I clear field located `${xpathFor_searchField}` using keyboard
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DisplayHistoricalMedicationsLink}` becomes VISIBLE
When I click on element located `${xpathFor_DisplayHistoricalMedicationsLink}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_hideHistoricalMedicationsLink}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DisplayHistoricalMedicationsLink}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MedicineNameInHistoricalViewInMob}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MedicineInstructionsInHistoricalViewInMob}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_PrescribedbyInMob}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sortByMedication}` becomes VISIBLE
When I click on element located `${xpathFor_sortByMedication}`
Then elements located `${xpathFor_listOfMedicinesDisplayInMob}` are sorted by text in CASE_INSENSITIVE_ASCENDING order
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_searchField}` becomes VISIBLE
When I enter `Lialda` in field located `${xpathFor_searchField}`
When I wait until element located `${xpathFor_listOfMedicinesDisplayInMob}` contains text 'Lialda'
When I clear field located `${xpathFor_searchField}` using keyboard
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_hideHistoricalMedicationsLink}` becomes VISIBLE
When I click on element located `${xpathFor_hideHistoricalMedicationsLink}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_listOfMedicinesDisplayInMob}` becomes VISIBLE
