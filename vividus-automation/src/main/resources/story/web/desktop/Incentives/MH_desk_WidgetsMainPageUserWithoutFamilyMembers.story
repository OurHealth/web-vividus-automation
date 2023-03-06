Description: As a user, I want to be able to review my active challenges to keep track of my progress and timeframes.

Meta:

    @Epic PT-645[PT-977]
    @group critical_path
    @layout desktop
    @incentives
    @Priority 2
    @issueId PT-977


Scenario: [Desktop][Incentives] Widget and main page for user w/out Family Members

Given I am on the main application page
When I change window size to `1280x720`
When I wait until element located `${xpathFor_signInHeader}` contains text '${text_SignIn}'
When I enter `remployee8` in field located `${userNameXpath}`
When I enter `Default1` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE
When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/Incentive/current-earning-summary`
Then the response code is equal to '200'
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_MyIncenticesStatusWidget}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_textMyIncentivesStatus}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_MyIncenticesStatusWidget}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_CashProgress}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_CashProgressbar}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_TimeRemaining}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_TimeRemainingProgressbar}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_TimeRemainingEndsDate}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ViewIncentives}` becomes VISIBLE
When I click on element located `${xpathFor_ViewIncentives}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_IncentivesHeader}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_TestMobileIncentiveProgram}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_DesriptionOfPrograms}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_MyStatus}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_MyStatusInRoundProgressBar}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_progressCashAmount}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_GoalsCompletedWithOutFamilyMem}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_progressbarOfGoalsCompletedWithOutFamilyMem}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_DaysRemaining}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_DaysRemainingProgressbarInIncentive}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_DaysRemainingEndsDate}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_FamilyEarnings}` becomes NOT_VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_FamilySummary}` becomes NOT_VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ViewHistoricalPrograms}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_MyStatus}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_IncentiveProgramGoals}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_SelfReportedCustomEntryGoalsList1}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_Challenge100GoalGoalsList2}` becomes VISIBLE
