Description: As a user, I want to be able to view my goals and accomplishments and report self-reported achievements to see what reward I am entitled to and where I can contribute more |


Meta:

    @Epic PT-645[PT-1005]
    @group critical_path
    @layout desktop
    @incentives
    @Priority 2
    @issueId PT-1005

Scenario: [Desktop][Incentives] Different goals statuses

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
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ConfirmedGoalForAutomation}` becomes VISIBLE
When I click on element located `${xpathFor_ConfirmedGoalForAutomation}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ConfirmedGoalForAutomation}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ThisGoalHasBeenConfirmed}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Confirmed}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RewardsForConfirmedGoalForAutomation}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Duration}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DescriptionForConfirmedGoalForAutomation}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_GoToQuestionnaires}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BackToAllGoals}` becomes VISIBLE
When I click on element located `${xpathFor_BackToAllGoals}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_WellnessWorkshopWeightManagement}` becomes VISIBLE
When I click on element located `${xpathFor_WellnessWorkshopWeightManagement}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_WellnessWorkshopWeightManagement}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ThisGoalAttemptConfirmedUnsuccessful_TxtMsg}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_GoalNotMet}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RewardsForWellnessWorkshopWeightManagement}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Duration}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DescOfWellnessWorkshopWeightManagement}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_GoToWellnessWorkshops}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BackToAllGoals}` becomes VISIBLE
When I click on element located `${xpathFor_BackToAllGoals}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_PendingGoalForAutomation}` becomes VISIBLE
When I click on element located `${xpathFor_PendingGoalForAutomation}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_PendingGoalForAutomation}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ThisGoalIsPendingConfirmationMsg}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ThisGoalIsPendingConfirmationMsg}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_PendingStatus}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RewardsForPendingGoalForAutomation}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Duration}` becomes VISIBLE
When I scroll context to BOTTOM edge
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DescriptionOfPendingGoalForAutomation}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_GoToQuestionnaires}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BackToAllGoals}` becomes VISIBLE
When I click on element located `${xpathFor_BackToAllGoals}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_FailedGoalChallenge75Goal}` becomes VISIBLE
When I click on element located `${xpathFor_FailedGoalChallenge75Goal}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_FailedGoalChallenge75Goal}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ThisGoalAttemptConfirmedUnsuccessful_TxtMsg}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_GoalNotMet}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RewardsForFailedGoalChallenge75Goal}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Duration}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_GoToChallenges}` becomes NOT_VISIBLE
