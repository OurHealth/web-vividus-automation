Description: As a user, I want to be able to edit my profile so that my profile data is up to date and relevant to provided services

Meta:

    @Epic PT-170[Jira-PT-650]
    @group smoketest
    @layout desktop
    @UserProfile
    @Priority 1
    @issueId PT-650

Scenario: [Desktop][User Profile] Personal Info


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
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_personalInfoSelected}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_titlePersonalInfoInRightSide}` becomes VISIBLE
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/User/user-profile`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_statusREGISTERED}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Prefix}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_LabelFirstName}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_user'sFirstName}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_LabelMiddleName}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_LabelLastName}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_user'sLastName}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Suffix}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_LegalSex}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_LegalSexWithMaleValue}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_user'sFirstName}` becomes VISIBLE
When I clear field located `${xpathFor_user'sFirstName}` using keyboard
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_user'sLastName}` becomes VISIBLE
When I clear field located `${xpathFor_user'sLastName}` using keyboard
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdateButton}` becomes VISIBLE
When I click on element located `${xpathFor_UpdateButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_FisrtNameCannotLeftBlank}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_LastNameCannotLeftBlank}` becomes VISIBLE

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_EnterFirstName}` becomes VISIBLE
When I enter `Test` in field located `${xpathFor_EnterFirstName}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_EnterLastName}` becomes VISIBLE
When I enter `Employee` in field located `${xpathFor_EnterLastName}`
When I click on element located `${xpathFor_UpdateButton}`
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/User/user-profile`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_FisrtNameCannotLeftBlank}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_FisrtNameCannotLeftBlank}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SavedButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdateButton}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_profileAndSettingsWithUpdatedFNameAndLName}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_EnterFirstName}` becomes VISIBLE
When I clear field located `${xpathFor_EnterFirstName}` using keyboard
When I enter `Employee8` in field located `${xpathFor_EnterFirstName}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_EnterLastName}` becomes VISIBLE
When I clear field located `${xpathFor_EnterLastName}` using keyboard
When I enter `React` in field located `${xpathFor_EnterLastName}`
When I click on element located `${xpathFor_UpdateButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_profileAndSettingsWithFNameAndLName}` becomes VISIBLE

Examples:
|userName  |pwd     |
|remployee8|Default1|
