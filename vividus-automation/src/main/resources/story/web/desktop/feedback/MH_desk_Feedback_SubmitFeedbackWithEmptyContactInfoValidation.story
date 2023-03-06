Description: As a user, I want to be able to select the appointment visit reason and type to provide efficient and sufficient info for my provider in advance and choose the appropriate communication type

Meta:

    @Epic PT-170[MHPF-477]
    @group critical_path
    @layout desktop
    @feedback
    @Priority 2
    @issueId MHPF-477


Scenario: [Desktop][Feedback] Submit feedback with empty contact info + validation

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
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_SubmitFeedback}` becomes VISIBLE
When I click on element located `${xpathFor_SubmitFeedback}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_CanNotBeBlankInFeedbackType}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_CanNotBeBlankInDetails}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_FeedbackTypeInputFieldLeftBlank}` becomes VISIBLE
When I click on element located `${xpathFor_FeedbackTypeInputFieldLeftBlank}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_Other}` becomes VISIBLE
When I click on element located `${xpathFor_Other}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_DetailsTextarea}` becomes VISIBLE
When I enter `text in the details text area` in field located `${xpathFor_DetailsTextarea}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_enterPrimaryEmail}` becomes VISIBLE
When I clear field located `${xpathFor_enterPrimaryEmail}` using keyboard
When I enter `testportal2021+304@gmail` in field located `${xpathFor_enterPrimaryEmail}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_PleaseEnterEmailInTheFormatErrorMessage}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_PhoneNumberCheckboxUnchecked}` becomes VISIBLE
When I click on element located `${xpathFor_PhoneNumberCheckboxUnchecked}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_Email}` becomes VISIBLE
When I click on element located `${xpathFor_Email}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_enterPrimaryEmail}` becomes NOT_VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_Phone}` becomes VISIBLE
When I clear field located `${xpathFor_Phone}` using keyboard
When I enter `123-456-7899` in field located `${xpathFor_Phone}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_PhoneErrorValidationMessage}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_Email}` becomes VISIBLE
When I click on element located `${xpathFor_Email}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_enterPrimaryEmail}` becomes VISIBLE
When I clear field located `${xpathFor_enterPrimaryEmail}` using keyboard
When I clear field located `${xpathFor_Phone}` using keyboard
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_SubmitFeedback}` becomes VISIBLE
When I click on element located `${xpathFor_SubmitFeedback}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_FeedbackForm}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ThankYouForSharingYourExperience}` becomes VISIBLE
