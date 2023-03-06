Description: As a user, I want to be able to edit my profile so that my profile data is up to date and relevant to provided services

Meta:

    @Epic PT-170[Jira-PT-852]
    @group critical_path
    @layout desktop
    @UserProfile
    @Priority 2
    @issueId PT-852

Scenario: [Desktop][User Profile] Family Premissions

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
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_FamilyPermissionsFromLeftPane}` becomes VISIBLE
When I click on element located `${xpathFor_FamilyPermissionsFromLeftPane}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_titleFamilyPermissions}` becomes VISIBLE
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/User/get-family-members`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_statusREGISTERED}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Spouse1ReactWithCheckBox}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_LinkToFamilyMembersDropDown}` becomes VISIBLE
When I click on element located `${xpathFor_LinkToFamilyMembersDropDown}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Child1ReactFromFamilMemDropDown}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Spouse1ReactFromFamilMemDropDown}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Dependent1ReactFromFamilMemDropDown}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_clickDropDownIcon}` becomes VISIBLE
When I click on element located `${xpathFor_clickDropDownIcon}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Spouse1ReactWithCheckBox}` becomes VISIBLE
When I click on element located `${xpathFor_Spouse1ReactWithCheckBox}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdateButton}` becomes VISIBLE
When I click on element located `${xpathFor_UpdateButton}`
When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/User/set-approved-viewers`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_clickDropDownIcon}` becomes VISIBLE
When I click on element located `${xpathFor_clickDropDownIcon}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SavedButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdateButton}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Spouse1ReactWithCheckBox}` becomes VISIBLE
When I click on element located `${xpathFor_Spouse1ReactWithCheckBox}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdateButton}` becomes VISIBLE
When I click on element located `${xpathFor_UpdateButton}`
When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/User/set-approved-viewers`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_clickDropDownIcon}` becomes VISIBLE
When I click on element located `${xpathFor_clickDropDownIcon}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SavedButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdateButton}` becomes NOT_VISIBLE

Examples:
|userName 	 |pwd     |
|remployee1|Default1|
