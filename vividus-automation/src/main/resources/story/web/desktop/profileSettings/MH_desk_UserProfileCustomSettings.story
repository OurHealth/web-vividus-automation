Description: As a user, I want to be able to edit my profile so that my profile data is up to date and relevant to provided services

Meta:

    @Epic PT-170[PT-847]
    @group critical_path
    @layout desktop
    @UserProfile
    @Priority 2
    @issueId PT-847

Scenario: [Desktop][User Profile] Custom Settings

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
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CustomSettingsInfoInDesk}` becomes VISIBLE
When I click on element located `${xpathFor_CustomSettingsInfoInDesk}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_titleCustomSettings}` becomes VISIBLE
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/StaticList/get-languages`
Then the response code is equal to '200'
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/StaticList/timezones`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_statusREGISTERED}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TimeZoneField}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_PrimaryLangField}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TimeZoneDropDown}` becomes VISIBLE
When I click on element located `${xpathFor_TimeZoneDropDown}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TimeZoneCentralTime}` becomes VISIBLE
When I click on element located `${xpathFor_TimeZoneCentralTime}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_LanguageDropDown}` becomes VISIBLE
When I click on element located `${xpathFor_LanguageDropDown}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SelectArabicLanguageFromDropDown}` becomes VISIBLE
When I click on element located `${xpathFor_SelectArabicLanguageFromDropDown}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdateButton}` becomes VISIBLE
When I click on element located `${xpathFor_UpdateButton}`
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/User/user-profile`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectedTimeZone}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectedLanguage}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SavedButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdateButton}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TimeZoneDropDown}` becomes VISIBLE
When I click on element located `${xpathFor_TimeZoneDropDown}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ChangeTimeZoneToPacificTime}` becomes VISIBLE
When I click on element located `${xpathFor_ChangeTimeZoneToPacificTime}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_LanguageDropDown}` becomes VISIBLE
When I click on element located `${xpathFor_LanguageDropDown}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ChangeLangugeToDefaultLang}` becomes VISIBLE
When I click on element located `${xpathFor_ChangeLangugeToDefaultLang}`
When I wait until state of element located `${xpathFor_UpdateButton}` is ENABLED
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdateButton}` becomes VISIBLE
When I click on element located `${xpathFor_UpdateButton}`

Examples:
|userName   |pwd     |
|remployee8 |Default1|
