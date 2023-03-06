Description: As a user, I want to be able to edit my profile so that my profile data is up to date and relevant to provided services

Meta:

    @Epic PT-170[Jira-PT-658]
    @group critical_path
    @layout desktop
    @UserProfile
    @Priority 2
    @issueId PT-658

Scenario: [Desktop][User Profile] Private Insurance


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
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_PrivateInsuranceInLeftPane}` becomes NOT_VISIBLE

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

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_PrivateInsuranceInLeftPane}` becomes VISIBLE
When I click on element located `${xpathFor_PrivateInsuranceInLeftPane}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_PrivateInsuranceSelectedInLeftPane}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_titlePrivateInsurance}` becomes VISIBLE
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/User/user-profile`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_statusREGISTERED}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CarrierName}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_GroupNumber}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MemberID}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${Rx_BIN}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${Rx_PCN}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_CarrierName}` becomes VISIBLE
When I clear field located `${xpathFor_CarrierName}` using keyboard
When I enter `Test` in field located `${xpathFor_CarrierName}`
When I enter `123456` in field located `${xpathFor_GroupNumber}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdateButton}` becomes VISIBLE
When I click on element located `${xpathFor_UpdateButton}`
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/User/user-profile`
Then the response code is equal to '200'
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_CarrierNameAsTest}` becomes VISIBLE
When I wait until state of element located `${xpathFor_CarrierName}` is ENABLED
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_CarrierName}` becomes VISIBLE
When I clear field located `${xpathFor_CarrierName}` using keyboard
When I clear field located `${xpathFor_GroupNumber}` using keyboard
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdateButton}` becomes VISIBLE
When I click on element located `${xpathFor_UpdateButton}`
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/User/user-profile`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CarrierNameAsTest}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SavedButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdateButton}` becomes NOT_VISIBLE

Examples:
|userName  |pwd     |userName1|
|remployee8|Default1|employeetest|
