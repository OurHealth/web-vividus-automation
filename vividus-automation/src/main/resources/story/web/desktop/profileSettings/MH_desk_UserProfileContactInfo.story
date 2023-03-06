Description: As a user, I want to be able to edit my profile so that my profile data is up to date and relevant to provided services

Meta:

    @Epic PT-170[Jira-PT-654]
    @group critical_path
    @layout desktop
    @UserProfile
    @Priority 2
    @issueId PT-654

Scenario: [Desktop][User Profile] Contact Info


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
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ContactInfoInDesk}` becomes VISIBLE
When I click on element located `${xpathFor_ContactInfoInDesk}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_profileAndSettingsWithFNameAndLName}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ContactInfoSelected}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_titleContactInfoInRightSide}` becomes VISIBLE
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/User/user-profile`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_statusREGISTERED}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_PrimaryEmailWithFilledEmail}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_CellphoneNumberWithFilledphoneNumber}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_home_phone_numberField}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_work_phone_numberField}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_work_emailField}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ContactPreferencesSection}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_PhoneCallWithCheckBox}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TextMessageWithCheckBox}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_EmailWithCheckBox}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_PrimaryEmailWithFilledEmail}` becomes VISIBLE
When I clear field located `${xpathFor_PrimaryEmailWithFilledEmail}` using keyboard
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CellphoneNumberWithFilledphoneNumber}` becomes VISIBLE
When I clear field located `${xpathFor_CellphoneNumberWithFilledphoneNumber}` using keyboard
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdateButton}` becomes VISIBLE
When I click on element located `${xpathFor_UpdateButton}`
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/User/user-profile`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SavedButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdateButton}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_enterPrimaryEmail}` becomes VISIBLE
When I enter `testportal2021+307` in field located `${xpathFor_enterPrimaryEmail}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_enterCell_phone_number}` becomes VISIBLE
When I enter `11111111111` in field located `${xpathFor_enterCell_phone_number}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdateButton}` becomes VISIBLE
When I click on element located `${xpathFor_UpdateButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_validationErrorMessageForContactNumber}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_enterPrimaryEmail}` becomes VISIBLE
When I clear field located `${xpathFor_enterPrimaryEmail}` using keyboard
When I enter `testportal2021+307@gmail.com` in field located `${xpathFor_enterPrimaryEmail}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_enterCell_phone_number}` becomes VISIBLE
When I clear field located `${xpathFor_enterCell_phone_number}` using keyboard
When I enter `985-962-7373` in field located `${xpathFor_enterCell_phone_number}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdateButton}` becomes VISIBLE
When I click on element located `${xpathFor_UpdateButton}`
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/User/user-profile`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_PrimaryEmailWithFilledEmail}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CellphoneNumberWithFilledphoneNumber}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SavedButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdateButton}` becomes NOT_VISIBLE

Examples:
|userName  |pwd     |
|remployee8|Default1|
