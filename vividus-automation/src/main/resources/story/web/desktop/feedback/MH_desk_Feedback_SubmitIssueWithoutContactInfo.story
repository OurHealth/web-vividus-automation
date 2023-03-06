Description: As a user, I want to be able to select the appointment visit reason and type to provide efficient and sufficient info for my provider in advance and choose the appropriate communication type

Meta:

    @Epic PT-170[MHPF-472]
    @group critical_path
    @layout desktop
    @feedback
    @Priority 2
    @issueId MHPF-472


Scenario: [Desktop][Feedback] Submit issue without contact info

Given I am on the main application page
When I wait until element located `${xpathFor_signInHeader}` contains text '${text_SignIn}'
When I enter `${userName5}` in field located `${userNameXpath}`
When I enter `${userPwd}` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_menuHelp}` becomes VISIBLE
When I click on element located `${xpathFor_menuHelp}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_FeedbackFormInHelpMenu}` becomes VISIBLE
When I click on element located `${xpathFor_FeedbackFormInHelpMenu}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_FeedbackForm}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_UsersNamePrefilledWithName}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_FeedbackTypeInputField}` becomes VISIBLE
When I click on element located `${xpathFor_FeedbackTypeInputField}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_I'mExperiencingAnIssue}` becomes VISIBLE
When I click on element located `${xpathFor_I'mExperiencingAnIssue}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_DetailsTextarea}` becomes VISIBLE
When I enter `text in the details text area` in field located `${xpathFor_DetailsTextarea}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_NoRadioButtonUnSelected}` becomes VISIBLE
When I click on element located `${xpathFor_NoRadioButtonUnSelected}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_SubmitAnonymouslyOption}` becomes NOT_VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_EmailCheckBoxChecked}` becomes NOT_VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_PhoneNumberCheckboxUnchecked}` becomes NOT_VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_SubmitFeedback}` becomes VISIBLE
When I click on element located `${xpathFor_SubmitFeedback}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_FeedbackForm}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ThankYouForSharingYourExperience}` becomes VISIBLE
When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/Feedback`
Then the response code is equal to '200'
Then JSON element from `
{
   "feedback_type": "issue"
}
` by JSON path `$.feedback_type` is equal to `issue`
