Description: As a user, I want to be able to see the information on my screenings to know screening results and keep track of my screenings As a patient/user, I want to be able to complete health questionnaires online so that I could have my health conditions assessed remotely.

Meta:

    @Epic PT-645[PT-843]
    @group smoketest
    @layout desktop
    @Questionnaires
    @Priority 1
    @issueId PT-843

Scenario: [Desktop][Questionnaires] Start, modify and delete questionnaire

Given I am on the main application page
When I change window size to `1440x900`
When I wait until element located `${xpathFor_signInHeader}` contains text '${text_SignIn}'
When I enter `<userName>` in field located `${userNameXpath}`
When I enter `<pwd>` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_menuMyHealth}` becomes VISIBLE
When I click on element located `${xpathFor_menuMyHealth}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_QuestionnairesFromHealthSummaryInDesk}` becomes VISIBLE
When I click on element located `${xpathFor_QuestionnairesFromHealthSummaryInDesk}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headeryMyHealthMyHealthQuestionnaires}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_titleHealthScreeningQuestionnaires}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_title1HealthScreeningQuestionnaires(HRA)}` becomes VISIBLE
When I click on element located `${xpathFor_title1HealthScreeningQuestionnaires(HRA)}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BackToQuestionnairesLink}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_titleHealthRiskAssessment}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_AboutTheHealthRiskAssessmentHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BeginQuestionnaireButton}` becomes VISIBLE
When I click on element located `${xpathFor_BeginQuestionnaireButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HealthRiskAssessmentInQuestionnaire}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_GeneralHealthHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Section1of11Text}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectAnswersForQue1InGenHealth}` becomes VISIBLE
When I click on element located `${xpathFor_selectAnswersForQue1InGenHealth}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectAnswersForQue2InGenHealth}` becomes VISIBLE
When I click on element located `${xpathFor_selectAnswersForQue2InGenHealth}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SaveAndContinueButton}` becomes VISIBLE
When I click on element located `${xpathFor_SaveAndContinueButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Section2Purpose}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Section2of11Text}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_FinishLatterButton}` becomes VISIBLE
When I click on element located `${xpathFor_FinishLatterButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_QuestionnairesPageHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_titleInProgressQuestionnaires}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_title2HealthScreeningQuestionnaires(HRA)}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_LastUpdated}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TrashBinIcon}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_title2HealthScreeningQuestionnaires(HRA)}` becomes VISIBLE
When I click on element located `${xpathFor_title2HealthScreeningQuestionnaires(HRA)}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Section2Purpose}` becomes VISIBLE
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/wellness/Questionnaire/get-in-progress-questionnaires`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_PreviousButton}` becomes VISIBLE
When I click on element located `${xpathFor_PreviousButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_GeneralHealthHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectAnswersForQue2InGenHealth}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectAnswersForQue1InGenHealth}` becomes VISIBLE
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
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_FinishLatterButton}` becomes VISIBLE
When I click on element located `${xpathFor_FinishLatterButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_QuestionnairesPageHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TrashBinIcon}` becomes VISIBLE
When I click on element located `${xpathFor_TrashBinIcon}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_deleteThisInProgressHealthRiskAssessment?Popup}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CancelButtonInpopup}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DeleteButtonInpopup}` becomes VISIBLE
When I click on element located `${xpathFor_CancelButtonInpopup}`
When I wait until an alert disappears
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_titleInProgressQuestionnaires}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TrashBinIcon}` becomes VISIBLE
When I click on element located `${xpathFor_TrashBinIcon}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DeleteButtonInpopup}` becomes VISIBLE
When I click on element located `${xpathFor_DeleteButtonInpopup}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_title2HealthScreeningQuestionnaires(HRA)}` becomes NOT_VISIBLE
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/wellness/Questionnaire/delete-in-progress-hra`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_textNoInProgressQuestionnaires}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_textNNoCompletedQuestionnaires}` becomes VISIBLE




Examples:
|userName	|pwd	 |
|rspouse1	|Default1|
