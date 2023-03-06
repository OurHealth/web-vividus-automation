Description: As a patient/user, I want to be able to see archived messages.


Meta:

    @Epic 645 - PT-1326
    @group critical_path
    @layout desktop
    @messages
    @Priority 2
    @issueId PT-1326

Scenario: [Desktop][Messages] Archived messages

Given I am on the main application page
When I enter `remployee8` in field located `${userNameXpath}`
When I enter `Default1` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_messages}` becomes VISIBLE
When I click on element located `${xpathFor_messages}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_InboxInMessages}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MessagesHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_InboxInMessages}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_NewMessageButton}` becomes VISIBLE
When I click on element located `${xpathFor_NewMessageButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MessageReasonDropDown}` becomes VISIBLE
When I wait until state of element located `${xpathFor_MessageReasonDropDown}` is ENABLED
When I click on element located `${xpathFor_MessageReasonDropDown}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_FeedbackSuggestionsInMsgReason}` becomes VISIBLE
When I click on element located `${xpathFor_FeedbackSuggestionsInMsgReason}`
When I wait `PT30S` with `PT15S` polling until element located `${xpathFor_NewMessageTextArea}` becomes VISIBLE
When I enter `Save message` in field located `${xpathFor_NewMessageTextArea}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SendMessageButton}` becomes VISIBLE
When I click on element located `${xpathFor_SendMessageButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_YourMessageHasBeenSent}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_InboxInMessages}` becomes VISIBLE
When I click on element located `${xpathFor_InboxInMessages}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SentOptionInInBox}` becomes VISIBLE
When I click on element located `${xpathFor_SentOptionInInBox}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SentBox}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ArchiveButton}` becomes VISIBLE
When I click on element located `${xpathFor_ArchiveButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ConversationArchived}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_FeedbackSuggestionsInSentbox}` becomes NOT_VISIBLE
When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/Messaging/archive?conversationId=`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SentBox}` becomes VISIBLE
When I click on element located `${xpathFor_SentBox}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ArchiveUnderInbox}` becomes VISIBLE
When I click on element located `${xpathFor_ArchiveUnderInbox}`
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/Messaging/mailbox-conversations?mailboxType=archived`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_WeAreRequiredToNotPermanentlyDeleteMessage}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ArchiveMessageUnderArchiveFolder}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SubMsgReasonInArchive}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ReceipentInArchive}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_clickOnFirstMessage}` becomes VISIBLE
When I click on element located `${xpathFor_clickOnFirstMessage}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_FeedbackSuggestionsInRightPaneOfArchiveMsg}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ToMemberRelationsInArchiveMsgInRightPane}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SentDateAndTime}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ArchivedInRightPaneArchiveMsg}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BodyOfTheMsgInArchieve}` becomes VISIBLE
