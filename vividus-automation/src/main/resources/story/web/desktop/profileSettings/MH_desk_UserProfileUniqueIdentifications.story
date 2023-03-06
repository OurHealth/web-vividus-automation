Description: As a user, I want to be able to edit my profile so that my profile data is up to date and relevant to provided services

Meta:

    @Epic PT-170[Jira-PT-652]
    @group smoketest
    @layout desktop
    @UserProfile
    @Priority 1
    @issueId PT-652

Scenario: [Desktop][User Profile] Unique Identifications


Given I am on the main application page
When I change window size to `1440x900`
When I wait until element located `${xpathFor_signInHeader}` contains text '${text_SignIn}'
When I enter `<userName>` in field located `${userNameXpath}`
When I enter `<pwd>` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_userProfileButton}` becomes VISIBLE
When I click on element located `${xpathFor_userProfileButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_profileAndSettings}` becomes VISIBLE
When I click on element located `${xpathFor_profileAndSettings}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_profileAndSettingsWithFNameAndLName}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UniqueIdentificationsFromPersonalInfoMenuInDesk}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_userProfileButton}` becomes VISIBLE
When I click on element located `${xpathFor_userProfileButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SignOut}` becomes VISIBLE
When I click on element located `${xpathFor_SignOut}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_signInHeader}` becomes VISIBLE
When I enter `<userName1>` in field located `${userNameXpath}`
When I enter `<pwd>` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_userProfileButton}` becomes VISIBLE
When I click on element located `${xpathFor_userProfileButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_profileAndSettings}` becomes VISIBLE
When I click on element located `${xpathFor_profileAndSettings}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UniqueIdentificationsFromPersonalInfoMenuInDesk}` becomes VISIBLE
When I click on element located `${xpathFor_UniqueIdentificationsFromPersonalInfoMenuInDesk}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_pageTitleUniqueIdentifications}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_statusREGISTERED}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_IndividualTaxpayerIdentificationNumberField}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_U.S.CitizenAndImmigrationServicesNumber}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_IndividualTaxpayerIdentificationNumberInputField}` becomes VISIBLE
When I enter `1234567890` in field located `${xpathFor_IndividualTaxpayerIdentificationNumberInputField}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_U.S.CitizenAndImmigrationServicesNumberInputField}` becomes VISIBLE
When I enter `3333333333` in field located `${xpathFor_U.S.CitizenAndImmigrationServicesNumberInputField}`
When I click on element located `${xpathFor_UpdateButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_U.S.CitizenAndImmigrationServicesNumberInputField}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_U.S.CitizenAndImmigrationServicesNumberAddedValue}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_SavedButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdateButton}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_IndividualTaxpayerIdentificationNumberInputField}` becomes VISIBLE
When I clear field located `${xpathFor_IndividualTaxpayerIdentificationNumberInputField}` using keyboard
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_U.S.CitizenAndImmigrationServicesNumberInputField}` becomes VISIBLE
When I clear field located `${xpathFor_U.S.CitizenAndImmigrationServicesNumberInputField}` using keyboard
When I click on element located `${xpathFor_UpdateButton}`

Examples:
|userName  |pwd     |userName1|
|remployee8|Default1|employeetest|
