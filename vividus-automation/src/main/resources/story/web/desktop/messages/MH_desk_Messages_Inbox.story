Description: As a patient/user, I want to be able to see messages in Inbox.


Meta:

    @Epic 645 - PT-1318
    @group critical_path
    @layout desktop
    @messages
    @Priority 2
    @issueId PT-1318

Scenario: [Desktop][Messages] Inbox

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
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/Messaging/mailbox-conversations?mailboxType=inbox`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ListOfMessagesInInbox}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SendersInInbox}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SubjectInInbox}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SenderDateInInbox}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_FirstMsgOpenedInInbox}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_NewMessageButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ArchiveButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ReplyButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SecondMsgInInbox}` becomes VISIBLE
When I click on element located `${xpathFor_SecondMsgInInbox}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SecondMsgTitleInRightPaneOfInInbox}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_FromAdminInSimpleTextMsg}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SentDateInSimpleTextMsg}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BodyInSimpleTextMsg}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ThirdMsgInInbox}` becomes VISIBLE
When I click on element located `${xpathFor_ThirdMsgInInbox}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_GeneralInquiryInRightPaneOfThirdMsg}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ToAdminInRightPaneOfThirdMsg}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SentDateInRightPaneOfThirdMsgInGenEnquiry}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MsgBodyInRightPaneOfThirdMsg}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SubjectOfThirdMsgInRightPane}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SentDateInRightPaneOfThirdMsgInAnnualMedCheck}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BodyOfTheMsgInRightPaneOfThirdMsg}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_AttachmentInRightPaneOfThirdMsg}` becomes VISIBLE
