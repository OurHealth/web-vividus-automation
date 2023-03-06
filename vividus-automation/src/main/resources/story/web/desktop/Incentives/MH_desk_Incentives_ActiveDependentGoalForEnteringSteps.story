Description: As a user, I want to be able to view my goals and accomplishments and report self-reported achievements to see what reward I am entitled to and where I can contribute more |


Meta:

    @Epic PT-645[PT-996]
    @group smoketest
    @layout desktop
    @incentives
    @Priority 1
    @issueId PT-996

Scenario: [Desktop][Incentives] Active dependent goal for entering steps

Given I am on the main application page
When I wait until element located `${xpathFor_signInHeader}` contains text 'Sign In'
When I enter `remployee8` in field located `${userNameXpath}`
When I enter `${userPwd}` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE
When I click on element located `${xpathFor_menuWellness}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_IncentivesUnderWellnessInDesk}` becomes VISIBLE
When I click on element located `${xpathFor_IncentivesUnderWellnessInDesk}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_IncentivesHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_GoalWithDependencies}` becomes VISIBLE
When I click on element located `${xpathFor_GoalWithDependencies}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_GoalWithDependenciesTitle}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TitleDependsOnConfirmedSuccessOf}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DistanceGoal}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RewardsForDistanceGoal}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DependentStepsGoal}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RewardPointsToStepsGoal}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RequiredInDependentStepsGoal}` becomes VISIBLE
When I click on element located `${xpathFor_DependentStepsGoal}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_StepsGoalTitle}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BackButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ViewAllGoalsLink}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RewardPointsToStepsGoalInDetailsView}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DurationInStepsGoal}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TargetsInStepsGoal}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DescriptionOfTheGoal}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RequiredActivity}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RecordSteps}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ViewWellnessLogsAsButton}` becomes VISIBLE
When I click on element located `${xpathFor_RecordSteps}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordStepsPopup}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DateField}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TimeField}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_StepsInRecordEntry}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RecordStepsButtonInpopup}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CancelButtonInpopup}` becomes VISIBLE
When I click on element located `${xpathFor_CancelButtonInpopup}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RecordSteps}` becomes VISIBLE
When I click on element located `${xpathFor_RecordSteps}`
When I enter `1111` in field located `${xpathFor_enterSteps}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RecordStepsButtonInpopup}` becomes VISIBLE
When I click on element located `${xpathFor_RecordStepsButtonInpopup}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_recordStepsPopup}` becomes NOT_VISIBLE
When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/WellnessLog/save-steps`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ViewWellnessLogsAsButton}` becomes VISIBLE
When I click on element located `${xpathFor_ViewWellnessLogsAsButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerWellnessLogs}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Steps}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BackToIncentives}` becomes VISIBLE
When I click on element located `${xpathFor_BackToIncentives}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_GoalWithDependencies}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SelfReportedCustomEntry}` becomes VISIBLE
When I click on element located `${xpathFor_GoalWithDependencies}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_GoalWithDependenciesTitle}` becomes VISIBLE
When I click on element located `${xpathFor_DependentStepsGoal}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_StepsGoalTitle}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BackButton}` becomes VISIBLE
When I click on element located `${xpathFor_BackButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_GoalWithDependenciesTitle}` becomes VISIBLE
When I click on element located `${xpathFor_DependentStepsGoal}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ViewAllGoalsLink}` becomes VISIBLE
When I click on element located `${xpathFor_ViewAllGoalsLink}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_GoalWithDependencies}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SelfReportedCustomEntry}` becomes VISIBLE
