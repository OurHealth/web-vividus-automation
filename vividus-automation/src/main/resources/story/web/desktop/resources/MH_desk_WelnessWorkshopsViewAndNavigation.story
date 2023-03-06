Description: As a user, I want to be able to have access to other external resources that may be helpful or provide valuable knowledge to my daily healthcare

Meta:

    @Epic PT-645[PT-971]
    @group critical_path
    @layout desktop
    @resources
    @Priority 2
    @issueId PT-971

GivenStories: story/web/desktop/logIn/MH_Login.story

Scenario: [Desktop][Resources] Welnness workshops - view and navigation

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ResourcesMenu}` becomes VISIBLE
When I click on element located `${xpathFor_ResourcesMenu}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_WellnessWorkshopsUnderMenu}` becomes VISIBLE
When I click on element located `${xpathFor_WellnessWorkshopsUnderMenu}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_WellnessWorkshops}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ExerciseWorkshop}` becomes VISIBLE
When I click on element located `${xpathFor_ExerciseWorkshop}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ExerciseHeading}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TxtMsgLearnMoreAboutHealthyExerciseHabits}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BackToWorkshops}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ExerciseProgress}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ProgressBarIcon}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ExerciseFilterAllInDesk}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ExerciseFilterWeek1}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ExerciseFilterWeek2}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ExerciseFilterWeek3}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ExerciseFilterWeek4}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Week1Task1}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Week2Task1}` becomes VISIBLE
When I scroll element located `${xpathFor_Week3Task1}` into view
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Week3Task1}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Week4Task1}` becomes VISIBLE
When I click on element located `${xpathFor_BackToWorkshops}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_WellnessWorkshops}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ExerciseWorkshop}` becomes VISIBLE
When I click on element located `${xpathFor_ExerciseWorkshop}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ExerciseFilterWeek2}` becomes VISIBLE
When I click on element located `${xpathFor_ExerciseFilterWeek2}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Week2Header}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Week3Header}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Week4Header}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_LogExerciseForWeek2Task}` becomes VISIBLE
When I click on element located `${xpathFor_LogExerciseForWeek2Task}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerWellnessLogs}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_fitnessActivityInRightPane}` becomes VISIBLE
