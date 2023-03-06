Description: As a patient/user, I want to be entitled to incentive programs and monitor my status/progress to enjoy bonuses and enhanced patient/user experience
Meta:

    @Epic PT-645[PT-982]
    @group critical_path
    @layout desktop
    @incentives
    @Priority 2
    @issueId PT-982

Scenario: [Desktop][Incentives] Historical program for user with family memebers

Given I am on the main application page
When I wait until element located `${xpathFor_signInHeader}` contains text 'Sign In'
When I enter `remployee2` in field located `${userNameXpath}`
When I enter `${userPwd}` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE
When I click on element located `${xpathFor_menuWellness}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_IncentivesUnderWellnessInDesk}` becomes VISIBLE
When I click on element located `${xpathFor_IncentivesUnderWellnessInDesk}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_IncentivesHeader}` becomes VISIBLE
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/Incentive/historical-programs`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ViewHistoricalPrograms}` becomes VISIBLE
When I click on element located `${xpathFor_ViewHistoricalPrograms}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HistoricalIncentivePrograms}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HistoricalProgramList1}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HistoricalProgramList2}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ViewButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ViewButton2021WellnessIncentiveProgram}` becomes VISIBLE
When I click on element located `${xpathFor_ViewButton2021WellnessIncentiveProgram}`
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/Incentive/earning-summary?programId=391`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_2021WellnessIncentiveProgramBanner}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ExitHistoricalProgramLink}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_2021WellnessIncentiveProgram}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_2021WellnessIncentiveProgramDescription}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MyStatus}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MyStatusProgress}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_NumberOfGoalsCompletedIn2021WellnessIncenProgram}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_GoalsProgressbar}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DaysRemaining}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DaysRemainingProgressbar}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_EndsDate}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_FamilyEarningInWellnessLogTypeProgram}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_FamilyEarningsProgressbarInWellnessLogTypeProgram}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_FamilySummary}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_FamilyMemberNameInWellnessLogTypeProgram}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_FamilyMemberType}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_FamilyMemberProgressIn2021WellnessIncenticesProgram}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_IncentiveProgramGoals}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HealthyNumbersGoalList1}` becomes VISIBLE
When I click on element located `${xpathFor_HealthyNumbersGoalList1}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HealthyNumbersTitle}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ScheduleAppointment}` becomes NOT_VISIBLE
When I click on element located `${xpathFor_ExitHistoricalProgramLink}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_IncentivesHeader}` becomes VISIBLE
