Description: As a user, I want to be able to see the information on my screenings to know screening results and keep track of my screenings As a patient/user, I want to be able to complete health questionnaires online so that I could have my health conditions assessed remotely.

Meta:

    @Epic PT-645[PT-841]
    @group critical_path
    @layout desktop
    @Questionnaires
    @Priority 2
    @issueId PT-841

Scenario: [Desktop] [Questionnaires] View and navigation

Given I am on the main application page
When I change window size to `1280x720`
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



When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/wellness/Questionnaire/get-in-progress-questionnaires`
Then the response code is equal to '200'
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/wellness/Questionnaire/get-completed-questionnaires`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_title1HealthScreeningQuestionnaires(HRA)}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_titleInProgressQuestionnaires}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_textNoInProgressQuestionnaires}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_titleCompletedQuestionnaires}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_title2HealthScreeningQuestionnaires(HRA)}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CompletedDate}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_downloadIcon}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `By.buttonName(Send to Health Record)` becomes VISIBLE
When I click on element located `${xpathFor_downloadIcon}`
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/wellness/Questionnaire/download-completed-hra-questionnaire`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `By.buttonName(Send to Health Record)` becomes VISIBLE
When I click on element located `By.buttonName(Send to Health Record)`
When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/wellness/QuestionnaireHra/generate-and-save-hra-pdf`
Then the response code is equal to '200'


Examples:
|userName	|pwd	 |
|remployee8	|Default1|
