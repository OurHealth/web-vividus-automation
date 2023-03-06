Description: As a user, I want to be able to view my goals and accomplishments and report self-reported achievements to see what reward I am entitled to and where I can contribute more |


Meta:

    @Epic PT-645[PT-1007]
    @group extended
    @layout desktop
    @incentives
    @Priority 3
    @issueId PT-1007

Scenario: [Desktop][Incentives] No reward goal

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
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DependentStepsGoal}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CheckForAnxiousBehavior}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_AnxiousGroup}` becomes VISIBLE
When I click on element located `${xpathFor_AnxiousGroup}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_AnxiousGroupTitle}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RewardsPointsForAnxietyGroup}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TitleDependsOnConfirmedSuccessOf}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CheckForAnxiousBehavior}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RewardsForCheckForAnxiousBehavior}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BackToAllGoals}` becomes VISIBLE
When I click on element located `${xpathFor_BackToAllGoals}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_GoalWithDependencies}` becomes VISIBLE
When I click on element located `${xpathFor_GoalWithDependencies}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_GoalWithDependenciesTitle}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RewardPointsOfGoalWithDependencies}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TitleDependsOnConfirmedSuccessOf}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DependentStepsGoal}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RewardPointsToStepsGoal}` becomes VISIBLE
