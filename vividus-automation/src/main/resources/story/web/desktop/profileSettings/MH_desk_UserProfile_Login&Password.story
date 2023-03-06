Description: As a user, I want to be able to edit my profile so that my profile data is up to date and relevant to provided services

Meta:

    @Epic PT-170[Jira-PT-664]
    @group smoketest
    @layout desktop
    @UserProfile
    @Priority 1
    @issueId PT-664

Scenario: [Desktop][User Profile] Login&Password

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
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Login&PasswordInDesk}` becomes VISIBLE
When I click on element located `${xpathFor_Login&PasswordInDesk}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Login&PasswordSelectedInLeftPane}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_titleLogin&Password}` becomes VISIBLE
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/User/user-profile`
Then the response code is equal to '200'
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_statusREGISTERED}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_enterPrimaryEmail}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${userNameXpath}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_userNameWithfilledUserName}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ChangePasswordWithCheckBox}` becomes VISIBLE
When I clear field located `${userNameXpath}` using keyboard
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdateButton}` becomes VISIBLE
When I click on element located `${xpathFor_UpdateButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_errorMsgCannotLeftBlank}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ChangePasswordWithCheckBox}` becomes VISIBLE
When I click on element located `${xpathFor_ChangePasswordWithCheckBox}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ChangePasswordTextbox}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ConfirmPasswordTextbox}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${userNameXpath}` becomes VISIBLE
When I enter `remployee88` in field located `${userNameXpath}`
When I enter `Default1` in field located `${xpathFor_ChangePasswordTextbox}`
When I enter `Default1` in field located `${xpathFor_ConfirmPasswordTextbox}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdateButton}` becomes VISIBLE
When I click on element located `${xpathFor_UpdateButton}`
When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/User/save-login-credentials`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_errorMessagePasswordMustNotMatchPreviousPassword}` becomes VISIBLE

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ChangePasswordTextbox}` becomes VISIBLE
When I wait until state of element located `${xpathFor_ChangePasswordTextbox}` is ENABLED



When I clear field located `${xpathFor_ChangePasswordTextbox}` using keyboard
When I enter `Default11` in field located `${xpathFor_ChangePasswordTextbox}`
When I clear field located `${xpathFor_ConfirmPasswordTextbox}` using keyboard
When I enter `Default11` in field located `${xpathFor_ConfirmPasswordTextbox}`
When I click on element located `${xpathFor_EyeIconOfPassword}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_EnteredPasswordInPwdField}` becomes VISIBLE
When I click on element located `${xpathFor_EyeIconOfConfirmPassword}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_EnteredPasswordInConfimrPwdField}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdateButton}` becomes VISIBLE
When I click on element located `${xpathFor_UpdateButton}`
When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/User/save-login-credentials`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_NewUserName}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SavedButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdateButton}` becomes NOT_VISIBLE
When I clear field located `${xpathFor_ChangePasswordTextbox}` using keyboard
When I enter `Default1` in field located `${xpathFor_ChangePasswordTextbox}`
When I clear field located `${xpathFor_ConfirmPasswordTextbox}` using keyboard
When I enter `Default1` in field located `${xpathFor_ConfirmPasswordTextbox}`
When I click on element located `${xpathFor_UpdateButton}`
When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/User/save-login-credentials`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_errorMessagePasswordMustNotMatchPreviousPassword}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${userNameXpath}` becomes VISIBLE
When I wait until state of element located `${userNameXpath}` is ENABLED
When I clear field located `${userNameXpath}` using keyboard
When I enter `remployee8` in field located `${userNameXpath}`
When I clear field located `${xpathFor_ChangePasswordTextbox}` using keyboard
When I enter `Default2` in field located `${xpathFor_ChangePasswordTextbox}`
When I clear field located `${xpathFor_ConfirmPasswordTextbox}` using keyboard
When I enter `Default2` in field located `${xpathFor_ConfirmPasswordTextbox}`
When I click on element located `${xpathFor_UpdateButton}`
When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/User/save-login-credentials`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_InitialUserName}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SavedButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdateButton}` becomes NOT_VISIBLE
When I clear field located `${xpathFor_ChangePasswordTextbox}` using keyboard
When I enter `Default1` in field located `${xpathFor_ChangePasswordTextbox}`
When I clear field located `${xpathFor_ConfirmPasswordTextbox}` using keyboard
When I enter `Default1` in field located `${xpathFor_ConfirmPasswordTextbox}`
When I click on element located `${xpathFor_UpdateButton}`
When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/User/save-login-credentials`
Then the response code is equal to '200'

Examples:
|userName   |pwd     |
|remployee8 |Default1|
