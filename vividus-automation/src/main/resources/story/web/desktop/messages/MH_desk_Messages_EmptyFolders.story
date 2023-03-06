Description: As a patient/user, I want to be able to see messages in Inbox.


Meta:

    @Epic [645] PT-1328
    @group exteneded
    @layout desktop
    @messages
    @Priority 3
    @issueId PT-1328

Scenario: [Desktop][Messages] Empty folders

Given I am on the main application page
When I enter `remployee10` in field located `${userNameXpath}`
When I enter `Default1` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_messages}` becomes VISIBLE
When I click on element located `${xpathFor_messages}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MessagesHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_InboxInMessages}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_YourInboxIsEmptyMsg}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_AllYourMsgsRepliesAndActivitiesHereSubMsg}` becomes VISIBLE
When I click on element located `${xpathFor_InboxInMessages}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SentOptionInInBox}` becomes VISIBLE
When I click on element located `${xpathFor_SentOptionInInBox}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_YourSentboxIsEmptyMsg}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_AllYourMsgsRepliesAndActivitiesHereSubMsg}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SentBox}` becomes VISIBLE
When I click on element located `${xpathFor_SentBox}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DraftOptionInInBox}` becomes VISIBLE
When I click on element located `${xpathFor_DraftOptionInInBox}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_YourDraftboxIsEmptyMsg}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_AllYourMsgsRepliesAndActivitiesHereSubMsg}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DraftOptionSelectedInInBox}` becomes VISIBLE
When I click on element located `${xpathFor_DraftOptionSelectedInInBox}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Archive}` becomes VISIBLE
When I click on element located `${xpathFor_Archive}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_YourArchiveboxIsEmptyMsg}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_AllYourMsgsRepliesAndActivitiesHereSubMsg}` becomes VISIBLE
