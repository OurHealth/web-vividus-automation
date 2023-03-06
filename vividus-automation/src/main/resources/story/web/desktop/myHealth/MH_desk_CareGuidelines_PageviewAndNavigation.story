Description: As a user, I want to be able to see my recommended quality measures to follow those healthcare guidelines and get healthier


Meta:

    @Epic PT-645[PT-1035]
    @group critical_path
    @layout desktop
    @MyHealth
    @Priority 2
    @issueId PT-1035

Scenario: [Desktop][Care Guidelines] Page view and navigation

Given I am on the main application page
When I change window size to `1280x720`
When I wait until element located `${xpathFor_signInHeader}` contains text '${text_SignIn}'
When I enter `remployee1` in field located `${userNameXpath}`
When I enter `Default1` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_menuMyHealth}` becomes VISIBLE
When I click on element located `${xpathFor_menuMyHealth}`
When I click on element located `${xpathFor_CareGuidelines}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MyHealthCareGuidelinesHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CareGuidelinesSectionSelectedInMenu}` becomes VISIBLE
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/HealthSummary/care-guidelines`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TitleYourRecommendedCareGuidelines}` becomes VISIBLE
When I wait `PT30S` with `PT05S` polling until element located `${xpathFor_DiabetesGuidelines}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_AdultPreventiveCareGuidelines}` becomes VISIBLE
When I click on element located `${xpathFor_AdultPreventiveCareGuidelines}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TitleAdultPreventiveCareGuidelines}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BackButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_PastDueTab}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpcomingTab}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_OtherTab}` becomes VISIBLE
When I click on element located `${xpathFor_PastDueTab}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DepressionInAdultsTitle}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DueDatePastDue}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DueDatePastDue}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_StatusNeedsWork}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DepressionInAdultsDescription}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HIVScreening}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HepatitisCScreening}` becomes VISIBLE
When I click on element located `${xpathFor_HepatitisCScreening}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HepatitisCScreeningTitleInRightPane}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DueDatePastDue}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_StatusNeedsWork}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HepatitisCScreeningDescription}` becomes VISIBLE
When I click on element located `${xpathFor_UpcomingTab}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Td/TdapAdultBooster}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Td/TdapAdultBoosterDueDate}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_LastResultDate}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_StatusCompleted}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_OtherTab}` becomes VISIBLE
When I click on element located `${xpathFor_OtherTab}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_AlcoholUseAssessment}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_AlcoholUseAssessmentDueDate}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_LastResultDate}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_StatusNeedsWork}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_AlcoholUseAssessmentDescription}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_InfluenzaVaccinationGuideLine}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TobaccoUseScreeningGuideLine}` becomes VISIBLE
When I click on element located `${xpathFor_TobaccoUseScreeningGuideLine}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_NotesInTobaccoUseScreening}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BackButton}` becomes VISIBLE
When I click on element located `${xpathFor_BackButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TitleYourRecommendedCareGuidelines}` becomes VISIBLE
