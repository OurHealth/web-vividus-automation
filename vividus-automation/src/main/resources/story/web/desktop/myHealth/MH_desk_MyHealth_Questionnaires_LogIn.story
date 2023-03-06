Description: As a user, I want to be able to see the information on my screenings to know screening results and keep track of my screenings
 As a patient/user, I want to be able to complete health questionnaires online so that I could have my health conditions assessed remotely.

Meta:

    @Epic PT-645[PT-841]
    @group critical_path
    @layout desktop
    @Questionnaires
    @Priority 2
    @issueId PT-841

Scenario: [Desktop] [Questionnaires] LogIn

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

Examples:
|userName  | pwd      |
|remployee8| Default1 |
