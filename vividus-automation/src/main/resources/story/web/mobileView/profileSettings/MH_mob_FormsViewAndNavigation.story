Description: | As a patient/user, I want to be able to see available patient forms and be able to download them to have necessary forms and templates at hand. |

Meta:

    @Epic PT-170[Jira-PT-275]
    @group critical_path
    @layout chrome_phone
    @articles
    @Priority 1

    GivenStories: story/web/mobileView/logIn/MH_mob_LoginPrecondition.story

Scenario: [Mobile][Forms] Forms view and navigation

When I scroll context to TOP edge
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_profileButton}` becomes VISIBLE
When I click on element located `${xpathFor_profileButton}`
When I click on element located `${xpathFor_formInMenu}`
When I click on element located `${xpathFor_mobProfileMenuCloseIcon}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headingForms}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `By.linkText(Home)` becomes VISIBLE
When I wait until element located `${xpathFor_breadcrumbForms}` appears
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headingPatientForms}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_releaseOfInformation}` becomes VISIBLE

When I click on element located `By.linkText(Home)`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headingMyIncentivesStatus}` becomes VISIBLE

When I wait until element located `${xpathFor_quickLinks}` contains text 'Quick Links'
When I wait until element located `${xpathFor_formsInDivText}` contains text 'Forms'
When I click on element located `${xpathFor_formsInDivText}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headingForms}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_releaseOfInformation}` becomes VISIBLE
When I click on element located `${xpathFor_releaseOfInformation}`
When I switch to a new window
When I close the current window

Examples:
|text|
|Employee1 React|
