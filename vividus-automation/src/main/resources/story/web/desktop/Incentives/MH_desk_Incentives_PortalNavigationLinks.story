Description: As a user, I want to be able to view my goals and accomplishments and report self-reported achievements to see what reward I am entitled to and where I can contribute more |


Meta:

    @Epic PT-645[PT-1002]
    @group smoketest
    @layout desktop
    @incentives
    @Priority 1
    @issueId PT-1002

Scenario: [Desktop][Incentives] Portal Navigation links

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
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Challenge100Goal}` becomes VISIBLE
When I click on element located `${xpathFor_Challenge100Goal}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Challenge100GoalTitle}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_GoToChallenges}` becomes VISIBLE
When I click on element located `${xpathFor_GoToChallenges}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ActiveChallengesHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BackToIncentives}` becomes VISIBLE
When I click on element located `${xpathFor_BackToIncentives}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_IncentivesHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_QuestionnariesGoal}` becomes VISIBLE
When I click on element located `${xpathFor_QuestionnariesGoal}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_QuestionnariesGoalTitle}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_GoToQuestionnaires}` becomes VISIBLE
When I click on element located `${xpathFor_GoToQuestionnaires}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_headeryMyHealthMyHealthQuestionnaires}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BackToIncentives}` becomes VISIBLE
When I click on element located `${xpathFor_BackToIncentives}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_IncentivesHeader}` becomes VISIBLE
