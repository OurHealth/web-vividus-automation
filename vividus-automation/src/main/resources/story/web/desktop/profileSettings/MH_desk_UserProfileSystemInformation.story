Description: As a user, I want to be able to edit my profile so that my profile data is up to date and relevant to provided services

Meta:

    @Epic PT-170[Jira-PT-881]
    @group extended
    @layout desktop
    @UserProfile
    @Priority 3
    @issueId PT-881

Scenario: [Desktop][User Profile] System Information

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
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SystemInformationFromLeftPane}` becomes VISIBLE
When I click on element located `${xpathFor_SystemInformationFromLeftPane}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_titleSystemInformation}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_statusREGISTERED}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SystemDisplayNameField}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HealthCoachFormVersionDropdown}` becomes VISIBLE
When I click on element located `${xpathFor_HealthCoachFormVersionDropdown}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HealthCoachFormVersionDropdownOption2}` becomes VISIBLE
When I click on element located `${xpathFor_HealthCoachFormVersionDropdownOption2}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdateButton}` becomes VISIBLE
When I click on element located `${xpathFor_UpdateButton}`
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/User/user-profile`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HealthCoachFormVersionSelectedOption2}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SavedButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdateButton}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HealthCoachFormVersionDropdown}` becomes VISIBLE
When I click on element located `${xpathFor_HealthCoachFormVersionDropdown}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HealthCoachFormVersionDropdownOption1}` becomes VISIBLE
When I click on element located `${xpathFor_HealthCoachFormVersionDropdownOption1}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdateButton}` becomes VISIBLE
When I click on element located `${xpathFor_UpdateButton}`
When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/User/user-profile`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HealthCoachFormVersionSelectedOption1}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SavedButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdateButton}` becomes NOT_VISIBLE


Examples:
|userName    |pwd     |
|employeetest|Default1|
