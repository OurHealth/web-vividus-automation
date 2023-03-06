Description: As a user, I want to be able to edit my profile so that my profile data is up to date and relevant to provided services

Meta:

    @Epic PT-170[Jira-PT-851]
    @group critical_path
    @layout desktop
    @UserProfile
    @Priority 2
    @issueId PT-851

Scenario: [Desktop][User Profile] Employer Profile

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

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_EmployerProfileFromLeftPane}` becomes NOT_VISIBLE

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




When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_EmployerProfileFromLeftPane}` becomes VISIBLE
When I click on element located `${xpathFor_EmployerProfileFromLeftPane}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_titleEmployerProfile}` becomes VISIBLE
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/User/user-employer-profiles`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_statusREGISTERED}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_EmploymentInformationInEmpProfile}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UniqueIdentificationsInEmpProfile}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_InsuranceInEmpProfile}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_EmploymentInformationInEmpProfile}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_JobTitleInEmploymentInformation}` becomes VISIBLE
When I enter `Testing` in field located `${xpathFor_JobTitleInEmploymentInformation}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_EmployerBasedPersonCodeInUniqueIdentificationsSec}` becomes VISIBLE
When I enter `11374` in field located `${xpathFor_EmployerBasedPersonCodeInUniqueIdentificationsSec}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdateButton}` becomes VISIBLE
When I click on element located `${xpathFor_UpdateButton}`
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/User/user-employer-profiles`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_EmployerBasedPersonCodeSavedValueInUniqueIdentificationsSec}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_JobTitleSavedValueInEmplInfoSec}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SavedButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdateButton}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_JobTitleInEmploymentInformation}` becomes VISIBLE
When I click on element located `${xpathFor_JobTitleInEmploymentInformation}`
When I clear field located `${xpathFor_JobTitleInEmploymentInformation}` using keyboard
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_EmployerBasedPersonCodeInUniqueIdentificationsSec}` becomes VISIBLE
When I clear field located `${xpathFor_EmployerBasedPersonCodeInUniqueIdentificationsSec}` using keyboard
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdateButton}` becomes ENABLED
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdateButton}` becomes VISIBLE
When I click on element located `${xpathFor_UpdateButton}`
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/User/user-employer-profiles`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_EmployerBasedPersonCodeSavedValueInUniqueIdentificationsSec}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_JobTitleSavedValueInEmplInfoSec}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SavedButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdateButton}` becomes NOT_VISIBLE

Examples:
|userName  |pwd     |userName1|
|remployee8|Default1|employeetest|
