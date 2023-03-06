Description: As a user, I want to be able to edit my profile so that my profile data is up to date and relevant to provided services

Meta:

    @Epic PT-170[Jira-PT-661]
    @group critical_path
    @layout desktop
    @UserProfile
    @Priority 2
    @issueId PT-661


Scenario: [Desktop][User Profile] Work Address


Given I am on the main application page
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_signInHeader}` becomes VISIBLE
When I enter `<userName>` in field located `${userNameXpath}`
When I enter `<pwd>` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_userProfileButton}` becomes VISIBLE
When I click on element located `${xpathFor_userProfileButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_profileAndSettings}` becomes VISIBLE
When I click on element located `${xpathFor_profileAndSettings}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_profileAndSettingsWithFNameAndLName}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_WorkAddressInLeftPane}` becomes NOT_VISIBLE
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
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_WorkAddressInLeftPane}` becomes VISIBLE
When I click on element located `${xpathFor_WorkAddressInLeftPane}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_WorkAddressSelectedInLeftPane}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_titleWorkAddress}` becomes VISIBLE
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/User/work-address`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_statusREGISTERED}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_streetAddress1}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_streetAddress2}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_cityInAddress}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_stateInAddress}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_zipCodeInAddress}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_streetAddress1}` becomes VISIBLE
When I enter `ReadyMixRoad` in field located `${xpathFor_streetAddress1}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_cityInAddress}` becomes VISIBLE
When I enter `Hyderabad` in field located `${xpathFor_cityInAddress}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdateButton}` becomes VISIBLE
When I click on element located `${xpathFor_UpdateButton}`
When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/User/work-address`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_streetAddress1FilledValue}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CityFilledValue}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_streetAddress1}` becomes VISIBLE
When I wait until state of element located `${xpathFor_streetAddress1FilledValue}` is ENABLED
When I clear field located `${xpathFor_streetAddress1FilledValue}` using keyboard
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_cityInAddress}` becomes VISIBLE
When I wait until state of element located `${xpathFor_cityInAddress}` is ENABLED
When I clear field located `${xpathFor_CityFilledValue}` using keyboard
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdateButton}` becomes VISIBLE
When I click on element located `${xpathFor_UpdateButton}`
When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/User/work-address`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_streetAddress1FilledValue}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CityFilledValue}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SavedButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdateButton}` becomes NOT_VISIBLE

Examples:
|userName  |pwd     |userName1|
|remployee8|Default1|employeetest|
