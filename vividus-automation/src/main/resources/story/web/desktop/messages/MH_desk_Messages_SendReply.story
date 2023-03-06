Description: As a patient/user, I want to be able to sent new messages from New Messages.


Meta:

    @Epic 645 - PT-1322
    @group smoketest
    @layout desktop
    @messages
    @Priority 1
    @issueId PT-1322

Scenario: [Desktop][Messages] Send reply

Given I am on the main application page
When I enter `remployee8` in field located `${userNameXpath}`
When I enter `Default1` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_messages}` becomes VISIBLE
When I click on element located `${xpathFor_messages}`
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_MessagesHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_InboxInMessages}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SubjectInInbox}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ReplyButton}` becomes VISIBLE
When I click on element located `${xpathFor_ReplyButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ReplyAsPageHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_EmergencyCallTextMsgInNewMessage}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MessageReason_GeneralInquiry}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ToAdmin}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SubjectMessageForReplyTest}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CancelButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SaveDraftButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SendMessageButton}` becomes VISIBLE
When I click on element located `${xpathFor_CancelButton}`
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_MessagesHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ReplyButton}` becomes VISIBLE
When I click on element located `${xpathFor_ReplyButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_NewMessageTextArea}` becomes VISIBLE
When I enter `New Reply` in field located `${xpathFor_NewMessageTextArea}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SendMessageButton}` becomes VISIBLE
When I click on element located `${xpathFor_SendMessageButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_YourMessageHasBeenSent}` becomes VISIBLE
When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/Messaging/new-message`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_InboxInMessages}` becomes VISIBLE
When I click on element located `${xpathFor_InboxInMessages}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SentOptionInInBox}` becomes VISIBLE
When I click on element located `${xpathFor_SentOptionInInBox}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SentBox}` becomes VISIBLE
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/Messaging/mailbox-conversations?mailboxType=sentbox`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_NewMessageButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ArchiveButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ReplyButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ListOfMessages}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SenderDateInInbox}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_AdminAsReceiver}` becomes VISIBLE
When I click on element located `${xpathFor_AdminAsReceiver}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_GeneralInquiry}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ToAdmin}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ReplySentDate}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_replyBody}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MessageForReplyTestInSubject}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_FromAdminInitialSender}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_InitialSentDate}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_InitialSenderMsgBody}` becomes VISIBLE
