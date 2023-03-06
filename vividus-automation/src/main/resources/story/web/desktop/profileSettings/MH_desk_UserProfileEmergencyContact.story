Description: As a user, I want to be able to edit my profile so that my profile data is up to date and relevant to provided services

Meta:

    @Epic PT-170[Jira-PT-656]
    @group critical_path
    @layout desktop
    @UserProfile
    @Priority 2
    @issueId PT-656

Scenario: [Desktop][User Profile] Emergency Contact


Given I am on the main application page
When I change window size to `1280x720`
When I wait until element located `${xpathFor_signInHeader}` contains text '${text_SignIn}'
When I enter `<userName>` in field located `${userNameXpath}`
When I enter `<pwd>` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_userProfileButton}` becomes VISIBLE
When I click on element located `${xpathFor_userProfileButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_profileAndSettings}` becomes VISIBLE
When I click on element located `${xpathFor_profileAndSettings}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_profileAndSettingsWithFNameAndLName}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_EmergencyContactSelected}` becomes VISIBLE
When I click on element located `${xpathFor_EmergencyContactSelected}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_EmergencyContactSelectedInLeftPane}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_titleEmergencyContact}` becomes VISIBLE
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/User/user-profile`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_statusREGISTERED}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_emergency_contact_first_name}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_emergency_contact_last_name}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_emergency_contact_phone_number}` becomes VISIBLE
When I clear field located `${xpathFor_emergency_contact_first_name}` using keyboard
When I enter `Test` in field located `${xpathFor_emergency_contact_first_name}`
When I enter `Employee` in field located `${xpathFor_emergency_contact_last_name}`
When I enter `1111111111111` in field located `${xpathFor_emergency_contact_phone_number}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdateButton}` becomes VISIBLE
When I click on element located `${xpathFor_UpdateButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_validationErrorMessageForContactNumber}` becomes VISIBLE
When I enter `543-564-3435` in field located `${xpathFor_emergency_contact_phone_number}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdateButton}` becomes VISIBLE
When I click on element located `${xpathFor_UpdateButton}`
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/User/user-profile`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_FirstNameAsTest}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SavedButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdateButton}` becomes NOT_VISIBLE
When I clear field located `${xpathFor_emergency_contact_first_name}` using keyboard
When I clear field located `${xpathFor_emergency_contact_last_name}` using keyboard
When I clear field located `${xpathFor_emergency_contact_phone_number}` using keyboard
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdateButton}` becomes VISIBLE
When I click on element located `${xpathFor_UpdateButton}`
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/User/user-profile`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_FirstNameAsTest}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SavedButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdateButton}` becomes NOT_VISIBLE

Examples:
|userName  |pwd     |
|remployee8|Default1|
