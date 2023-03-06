Description: As a patient/user, I want to be able to save and send draft messages.


Meta:

    @Epic [PT-645] PT-1331
    @group smoketest
    @layout desktop
    @messages
    @Priority 1
    @issueId PT-1331

Scenario: [Desktop][Messages] Save and send Draft

Given I am on the main application page
When I enter `remployee8` in field located `${userNameXpath}`
When I enter `Default1` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_messages}` becomes VISIBLE
When I click on element located `${xpathFor_messages}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MessagesHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_InboxInMessages}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_NewMessageButton}` becomes VISIBLE
When I click on element located `${xpathFor_NewMessageButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_NewMessageHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SaveDraftButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MessageReasonDropDown}` becomes VISIBLE
When I wait until state of element located `${xpathFor_MessageReasonDropDown}` is ENABLED
When I click on element located `${xpathFor_MessageReasonDropDown}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SchedulingInMsgReasonDropdown}` becomes VISIBLE
When I click on element located `${xpathFor_SchedulingInMsgReasonDropdown}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ThisMessageWillBeSentToTheMarathonHealth}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_NewMessageTextArea}` becomes VISIBLE
When I enter `Saving message body in draft` in field located `${xpathFor_NewMessageTextArea}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SaveDraftButton}` becomes VISIBLE
When I click on element located `${xpathFor_SaveDraftButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_YourDraftHasBeenSaved}` becomes VISIBLE
When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/Messaging/new-message`
Then the response code is equal to '200'
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/Messaging/conversation-messages?conversationId=329659&showDraft=true`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_InboxInMessages}` becomes VISIBLE
When I click on element located `${xpathFor_InboxInMessages}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DraftOptionInInBox}` becomes VISIBLE
When I click on element located `${xpathFor_DraftOptionInInBox}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DraftOptionSelectedInInBox}` becomes VISIBLE
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com//Messaging/mailbox-conversations?mailboxType=draft`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_NewMessageButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_EditButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DeleteButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ListOfMessages}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Receiver}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SubjectScheduling}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ReceiverDate}` becomes VISIBLE
When I click on element located `${xpathFor_SubjectScheduling}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SubjectSchedulingInRightPane}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ToMemberRelationsInDraftMsgInRightPane}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SentDateAndTime}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MessageBodyInDrafts}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_EditButton}` becomes VISIBLE
When I click on element located `${xpathFor_EditButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DraftAsHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_PrefilledSchedulingAsMsgReasonInDrafts}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ToMemberRelationsTeam}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_PrefilledNewMessageInDrafts}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CancelButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SaveDraftButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SendMessageButton}` becomes VISIBLE
When I click on element located `${xpathFor_SendMessageButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_YourMessageHasBeenSent}` becomes VISIBLE
When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/Messaging/new-message`
Then the response code is equal to '200'
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/Messaging/conversation-messages?conversationId=329659&showDraft=false`
Then the response code is equal to '200'
