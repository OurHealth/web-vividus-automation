Description: As a user, I want to be able to see the information on my screenings to know screening results and keep track of my screenings As a patient/user, I want to be able to complete health questionnaires online so that I could have my health conditions assessed remotely

Meta:

    @Epic PT-645[PT-845]
    @group smoketest
    @layout desktop
    @Questionnaires
    @Priority 1
    @issueId PT-845

Scenario: [Desktop][Questionnaire] Complete HRA

Given I am on the main application page
When I change window size to `1440x900`
When I wait until element located `${xpathFor_signInHeader}` contains text '${text_SignIn}'
When I enter `<userName>` in field located `${userNameXpath}`
When I enter `<pwd>` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_menuMyHealth}` becomes VISIBLE
When I click on element located `${xpathFor_menuMyHealth}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_QuestionnairesFromMyHealthSummaryInDesk}` becomes VISIBLE
When I click on element located `${xpathFor_QuestionnairesFromMyHealthSummaryInDesk}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headeryMyHealthMyHealthQuestionnaires}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_titleHealthScreeningQuestionnaires}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_title1HealthScreeningQuestionnaires(HRA)}` becomes VISIBLE
When I click on element located `${xpathFor_title1HealthScreeningQuestionnaires(HRA)}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BeginQuestionnaireButton}` becomes VISIBLE
When I click on element located `${xpathFor_BeginQuestionnaireButton}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_GeneralHealthHeader}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_selectAnswersForQue1InGenHealth}` becomes VISIBLE
When I click on element located `${xpathFor_selectAnswersForQue1InGenHealth}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectAnswersForQue2InGenHealth}` becomes VISIBLE
When I click on element located `${xpathFor_selectAnswersForQue2InGenHealth}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SaveAndContinueButton}` becomes VISIBLE
When I click on element located `${xpathFor_SaveAndContinueButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Section2Purpose}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectAnswersForQue1InPurpose}` becomes VISIBLE
When I click on element located `${xpathFor_selectAnswersForQue1InPurpose}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectAnswersForQue2InPurpose}` becomes VISIBLE
When I click on element located `${xpathFor_selectAnswersForQue2InPurpose}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectAnswersForQue3InPurpose}` becomes VISIBLE
When I click on element located `${xpathFor_selectAnswersForQue3InPurpose}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectAnswersForQue4InPurpose}` becomes VISIBLE
When I click on element located `${xpathFor_selectAnswersForQue4InPurpose}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectAnswersForQue5InPurpose}` becomes VISIBLE
When I click on element located `${xpathFor_selectAnswersForQue5InPurpose}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectAnswersForQue6InPurpose}` becomes VISIBLE
When I click on element located `${xpathFor_selectAnswersForQue6InPurpose}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SaveAndContinueButton}` becomes VISIBLE
When I click on element located `${xpathFor_SaveAndContinueButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Section3Stress}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectAnswersForQue1InStress}` becomes VISIBLE
When I click on element located `${xpathFor_selectAnswersForQue1InStress}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectAnswersForQue2InStress}` becomes VISIBLE
When I click on element located `${xpathFor_selectAnswersForQue2InStress}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectAnswersForQue3InStress}` becomes VISIBLE
When I click on element located `${xpathFor_selectAnswersForQue3InStress}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectAnswersForQue4InStress}` becomes VISIBLE
When I click on element located `${xpathFor_selectAnswersForQue4InStress}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectAnswersForQue5InStress}` becomes VISIBLE
When I click on element located `${xpathFor_selectAnswersForQue5InStress}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectAnswersForQue6InStress}` becomes VISIBLE
When I click on element located `${xpathFor_selectAnswersForQue6InStress}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectAnswersForQue7InStress}` becomes VISIBLE
When I click on element located `${xpathFor_selectAnswersForQue7InStress}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectAnswersForQue8InStress}` becomes VISIBLE
When I click on element located `${xpathFor_selectAnswersForQue8InStress}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectAnswersForQue9InStress}` becomes VISIBLE
When I click on element located `${xpathFor_selectAnswersForQue9InStress}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectAnswersForQue10InStress}` becomes VISIBLE
When I click on element located `${xpathFor_selectAnswersForQue10InStress}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SaveAndContinueButton}` becomes VISIBLE
When I click on element located `${xpathFor_SaveAndContinueButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Section4Sleep}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectAnswersForQue1InSleep}` becomes VISIBLE
When I click on element located `${xpathFor_selectAnswersForQue1InSleep}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectAnswersForQue2InSleep}` becomes VISIBLE
When I click on element located `${xpathFor_selectAnswersForQue2InSleep}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectAnswersForQue3InSleep}` becomes VISIBLE
When I click on element located `${xpathFor_selectAnswersForQue3InSleep}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SaveAndContinueButton}` becomes VISIBLE
When I click on element located `${xpathFor_SaveAndContinueButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Section5Nutrition}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectAnswersForQue1InNutrition}` becomes VISIBLE
When I click on element located `${xpathFor_selectAnswersForQue1InNutrition}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectAnswersForQue2InNutrition}` becomes VISIBLE
When I click on element located `${xpathFor_selectAnswersForQue2InNutrition}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectAnswersForQue3InNutrition}` becomes VISIBLE
When I click on element located `${xpathFor_selectAnswersForQue3InNutrition}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectAnswersForQue4InNutrition}` becomes VISIBLE
When I click on element located `${xpathFor_selectAnswersForQue4InNutrition}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SaveAndContinueButton}` becomes VISIBLE
When I click on element located `${xpathFor_SaveAndContinueButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Section6PhysicalActivity}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectAnswersForQue1InPhysicalActivity}` becomes VISIBLE
When I click on element located `${xpathFor_selectAnswersForQue1InPhysicalActivity}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectAnswersForQue2InPhysicalActivity}` becomes VISIBLE
When I click on element located `${xpathFor_selectAnswersForQue2InPhysicalActivity}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectAnswersForQue3InPhysicalActivity}` becomes VISIBLE
When I click on element located `${xpathFor_selectAnswersForQue3InPhysicalActivity}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectAnswersForQue4InPhysicalActivity}` becomes VISIBLE
When I click on element located `${xpathFor_selectAnswersForQue4InPhysicalActivity}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SaveAndContinueButton}` becomes VISIBLE
When I click on element located `${xpathFor_SaveAndContinueButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Section7Tobacco}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectAnswersForQue1InTobacco}` becomes VISIBLE
When I click on element located `${xpathFor_selectAnswersForQue1InTobacco}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SaveAndContinueButton}` becomes VISIBLE
When I click on element located `${xpathFor_SaveAndContinueButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Section8RiskBehavior}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectAnswersForQue1InRiskBehavior}` becomes VISIBLE
When I click on element located `${xpathFor_selectAnswersForQue1InRiskBehavior}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectAnswersForQue2InRiskBehavior}` becomes VISIBLE
When I click on element located `${xpathFor_selectAnswersForQue2InRiskBehavior}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectAnswersForQue3InRiskBehavior}` becomes VISIBLE
When I click on element located `${xpathFor_selectAnswersForQue3InRiskBehavior}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectAnswersForQue4InRiskBehavior}` becomes VISIBLE
When I click on element located `${xpathFor_selectAnswersForQue4InRiskBehavior}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectAnswersForQue5InRiskBehavior}` becomes VISIBLE
When I click on element located `${xpathFor_selectAnswersForQue5InRiskBehavior}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectAnswersForQue6InRiskBehavior}` becomes VISIBLE
When I click on element located `${xpathFor_selectAnswersForQue6InRiskBehavior}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectAnswersForQue7InRiskBehavior}` becomes VISIBLE
When I click on element located `${xpathFor_selectAnswersForQue7InRiskBehavior}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SaveAndContinueButton}` becomes VISIBLE
When I click on element located `${xpathFor_SaveAndContinueButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Section9ReadinessToChange}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectAnswersForQue1InReadinessToChange}` becomes VISIBLE
When I click on element located `${xpathFor_selectAnswersForQue1InReadinessToChange}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SaveAndContinueButton}` becomes VISIBLE
When I click on element located `${xpathFor_SaveAndContinueButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Section10FinancialWellness}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectAnswersForQue1InFinancialWellness}` becomes VISIBLE
When I click on element located `${xpathFor_selectAnswersForQue1InFinancialWellness}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectAnswersForQue2InFinancialWellness}` becomes VISIBLE
When I click on element located `${xpathFor_selectAnswersForQue2InFinancialWellness}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectAnswersForQue3InFinancialWellness}` becomes VISIBLE
When I click on element located `${xpathFor_selectAnswersForQue3InFinancialWellness}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SaveAndContinueButton}` becomes VISIBLE
When I click on element located `${xpathFor_SaveAndContinueButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Section11SocialDeterminantsOfHealth}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectAnswersForQue1InSocialDeterminantsOfHealth}` becomes VISIBLE
When I click on element located `${xpathFor_selectAnswersForQue1InSocialDeterminantsOfHealth}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectAnswersForQue2InSocialDeterminantsOfHealth}` becomes VISIBLE
When I click on element located `${xpathFor_selectAnswersForQue2InSocialDeterminantsOfHealth}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectAnswersForQue3InSocialDeterminantsOfHealth}` becomes VISIBLE
When I click on element located `${xpathFor_selectAnswersForQue3InSocialDeterminantsOfHealth}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SaveAndContinueButton}` becomes VISIBLE
When I click on element located `${xpathFor_SaveAndContinueButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CompleteHealthRiskAssessmentTitle}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_FinishLatterButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SendToHealthRecordButton}` becomes VISIBLE
When I click on element located `${xpathFor_FinishLatterButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_QuestionnairesPageHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_titleInProgressQuestionnaires}` becomes VISIBLE

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_title2HealthScreeningQuestionnaires(HRA)}` becomes VISIBLE
When I click on element located `${xpathFor_title2HealthScreeningQuestionnaires(HRA)}`

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SaveAndContinueButton}` becomes VISIBLE
When I click on element located `${xpathFor_SaveAndContinueButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CompleteHealthRiskAssessmentTitle}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SendToHealthRecordButton}` becomes VISIBLE
When I click on element located `${xpathFor_SendToHealthRecordButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_QuestionnairesPageHeader}` becomes VISIBLE
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/wellness/Questionnaire/complete-in-progress-hra`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_titleCompletedQuestionnaires}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CompletedDate}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_titleCompletedQuestionnaires}` becomes VISIBLE
When I click on element located `${xpathFor_HealthRiskAssessment(HRA)}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_GeneralHealthHeader}` becomes VISIBLE

When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_selectAnswersForQue1InGenHealth}` becomes VISIBLE
When I click on element located `${xpathFor_selectAnswersForQue1InGenHealth}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectAnswersForQue2InGenHealth}` becomes VISIBLE
When I click on element located `${xpathFor_selectAnswersForQue2InGenHealth}`
Examples:
|userName	    |pwd	 |
|remployee9	|Default1|
