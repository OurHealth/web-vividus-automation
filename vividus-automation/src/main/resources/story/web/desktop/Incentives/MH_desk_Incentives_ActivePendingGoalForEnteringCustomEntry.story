Description: As a user, I want to be able to view my goals and accomplishments and report self-reported achievements to see what reward I am entitled to and where I can contribute more |


Meta:

    @Epic PT-645[PT-1000]
    @group smoketest
    @layout desktop
    @incentives
    @Priority 1
    @issueId PT-1000

Scenario: [Desktop][Incentive] Active/Pending goal for entering custom entry

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

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SelfReportedCustomEntry}` becomes VISIBLE
When I click on element located `${xpathFor_SelfReportedCustomEntry}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SelfReportedCustomEntryTitle}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RecordEntry}` becomes VISIBLE
When I click on element located `${xpathFor_RecordEntry}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SelfReportedActivity}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SelfReportedCustomEntryPopup}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RequiredField}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DateActivityCompletedField}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ActivityDescriptionField}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CancelButtonInpopup}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RecordEntryButtonInPopup}` becomes VISIBLE
When I click on element located `${xpathFor_RecordEntryButtonInPopup}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DescriptionRequired}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ActivityDescription}` becomes VISIBLE
When I enter `Autotest` in field located `${xpathFor_ActivityDescription}`
When I clear field located `${xpathFor_DateActivityCompleted}` using keyboard
When I enter `#{generateDate(P1M, MM/dd/yyyy)}` in field located `${xpathFor_DateActivityCompleted}`
When I click on element located `${xpathFor_RecordEntryButtonInPopup}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ActivityDateMustBeWithinTheIncentiveGoalPeriodErrorMsg}` becomes VISIBLE
When I clear field located `${xpathFor_DateActivityCompleted}` using keyboard
When I enter `#{generateDate(P, MM/dd/yyyy)}` in field located `${xpathFor_DateActivityCompleted}`
When I click on element located `${xpathFor_RecordEntryButtonInPopup}`
When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/Incentive/incentive-achievement`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SelfReportedActivity}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_PendingStatus}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_YourRecordedValue}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ThisGoalIsPendingConfirmationMsg}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RecordEntry}` becomes VISIBLE
When I click on element located `${xpathFor_RecordEntry}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ActivityDescription}` becomes VISIBLE
When I enter `Updated` in field located `${xpathFor_ActivityDescription}`
When I click on element located `${xpathFor_UpdateEntry}`
When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/Incentive/incentive-achievement`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SelfReportedActivity}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_YourRecordedValueAfterUpdate}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_RecordEntry}` becomes VISIBLE
When I click on element located `${xpathFor_RecordEntry}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DeleteButtonInpopup}` becomes VISIBLE
When I click on element located `${xpathFor_DeleteButtonInpopup}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SelfReportedActivity}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_YourRecordedValueAfterUpdate}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ThisGoalIsPendingConfirmationMsg}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_PendingStatus}` becomes NOT_VISIBLE
