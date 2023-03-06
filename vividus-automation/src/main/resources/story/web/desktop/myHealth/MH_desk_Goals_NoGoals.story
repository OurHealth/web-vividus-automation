Description: As a user, I want to be able to see my goals and their tasks and statuses to enhance user experience


Meta:

    @Epic PT-645[PT-1033]
    @group extended
    @layout desktop
    @MyHealth
    @Priority 3
    @issueId PT-1033

Scenario: [Desktop][Goals] No goals

Given I am on the main application page
When I wait until element located `${xpathFor_signInHeader}` contains text '${text_SignIn}'
When I enter `remployee10` in field located `${userNameXpath}`
When I enter `Default1` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_menuMyHealth}` becomes VISIBLE
When I click on element located `${xpathFor_menuMyHealth}`
When I click on element located `${xpathFor_GoalsUnderMyHealth}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MyHealthGoals}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_GoalsSectionSelectedInMenu}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TitlteMyGoals}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ActiveTab}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CompletedTab}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HistoricalTab}` becomes VISIBLE
When I click on element located `${xpathFor_ActiveTab}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_NoActiveGoalsTxtMsg}` becomes VISIBLE
When I click on element located `${xpathFor_CompletedTab}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_NoCompletedGoalsTxtMsg}` becomes VISIBLE
When I click on element located `${xpathFor_HistoricalTab}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_NoHistoricalGoalsTxtMsg}` becomes VISIBLE
