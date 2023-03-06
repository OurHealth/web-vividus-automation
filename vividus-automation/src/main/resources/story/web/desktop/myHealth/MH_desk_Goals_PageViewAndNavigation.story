Description: As a user, I want to be able to see my goals and their tasks and statuses to enhance user experience


Meta:

    @Epic PT-645[PT-1029]
    @group critical_path
    @layout desktop
    @MyHealth
    @Priority 2
    @issueId PT-1029

Scenario: [Desktop][Goals] Page view and navigation

Given I am on the main application page
When I change window size to `1280x720`
When I wait until element located `${xpathFor_signInHeader}` contains text '${text_SignIn}'
When I enter `remployee8` in field located `${userNameXpath}`
When I enter `Default1` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_menuMyHealth}` becomes VISIBLE
When I click on element located `${xpathFor_menuMyHealth}`
When I click on element located `${xpathFor_GoalsUnderMyHealth}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MyHealthGoals}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_GoalsSectionSelectedInMenu}` becomes VISIBLE
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/HealthSummary/goals`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TitlteMyGoals}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ActiveTab}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CompletedTab}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HistoricalTab}` becomes VISIBLE
When I click on element located `${xpathFor_ActiveTab}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TitleSmokingCessation}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_StartDate}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdatedOn}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdatedBy}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_QuitsSmokingDesription}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_IncompleteStatus}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TitleTasks}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Task1Status}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdatedOnInTask1}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdatedByInTask1}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DescriptionOfTheTask1}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Task2StatusCompleted}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdatedOnInTask2}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdatedByInTask2}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DescriptionOfTheTask2}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CompletedTab}` becomes VISIBLE
When I click on element located `${xpathFor_CompletedTab}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TitleWeightMaintenance}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdatedOn}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdatedBy}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_WeightMaintenanceDescription}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_StatusCompleted}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TitleTasks}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Task1StatusActive}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdatedOnInTask1}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdatedByInTask1}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DescriptionOfTheTask1InWeightMaintenance}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Task3StatusCompletedInWeightMaintenance}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdatedByInTask3InWeightMaintenance}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Task3InWeightMaintenanceDescription}` becomes VISIBLE
