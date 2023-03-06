Description: As a user, I want to be able to review my active challenges to keep track of my progress and timeframes.

Meta:

    @Epic PT-645[PT-975]
    @group smoketest
    @layout desktop
    @incentives
    @Priority 1
    @issueId PT-975


Scenario: [Desktop][Incentives] Widget and main page for user with Family Members

Given I am on the main application page
When I change window size to `1280x720`
When I wait until element located `${xpathFor_signInHeader}` contains text '${text_SignIn}'
When I enter `remployee2` in field located `${userNameXpath}`
When I enter `Default1` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_HowCanWeHelpYouTodayInHomePage}` becomes VISIBLE
When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/Incentive/current-earning-summary`
Then the response code is equal to '200'
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
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ViewHistoricalPrograms}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_MyStatus}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_MyStatusInRoundProgressBar}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_GoalsCompleted}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_progressbarOfGoalsCompleted}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_DaysRemaining}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_DaysRemainingProgressbarInViewIncentives}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_DaysRemainingEndsDate}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_FamilyEarnings}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_FamilyEarningsProgressbar}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_FamilySummary}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_FamilyMemberType}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_FamilyMemberProgress}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_IncentiveProgramGoals}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_SelfReportedCustomEntryGoalsList1}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_Challenge100GoalGoalsList2}` becomes VISIBLE
