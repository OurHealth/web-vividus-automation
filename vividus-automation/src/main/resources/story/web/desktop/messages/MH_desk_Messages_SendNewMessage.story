Description: As a patient/user, I want to be able to sent new messages from New Messages.


Meta:

    @Epic 645 - PT-1320
    @group smoketest
    @layout desktop
    @messages
    @Priority 1
    @issueId PT-1320

Scenario: [Desktop][Messages] Send new message

Given I am on the main application page
When I enter `remployee8` in field located `${userNameXpath}`
When I enter `Default1` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_messages}` becomes VISIBLE
When I click on element located `${xpathFor_messages}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MessagesHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_NewMessageButton}` becomes VISIBLE
When I click on element located `${xpathFor_NewMessageButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_NewMessageHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_EmergencyCallTextMsgInNewMessage}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MessageReason}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SubjectFieldInNewMsg}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CancelButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SaveDraftButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SendMessageButton}` becomes VISIBLE
When I click on element located `${xpathFor_CancelButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_NewMessageButton}` becomes VISIBLE
When I click on element located `${xpathFor_NewMessageButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MessageReasonDropDown}` becomes VISIBLE
When I wait until state of element located `${xpathFor_MessageReasonDropDown}` is ENABLED
When I click on element located `${xpathFor_MessageReasonDropDown}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_FeedbackSuggestionsInMsgReason}` becomes VISIBLE
When I click on element located `${xpathFor_FeedbackSuggestionsInMsgReason}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ToMemberRelationsTeam}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ToMemberRelationsTeam}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SubjectFeedbackAndSuggestion}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MessageReasonDropDown}` becomes VISIBLE
When I wait until state of element located `${xpathFor_MessageReasonDropDown}` is ENABLED
When I click on element located `${xpathFor_MessageReasonDropDown}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_IncentivesInMsgReason}` becomes VISIBLE
When I click on element located `${xpathFor_IncentivesInMsgReason}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SubjectIncentives}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_AttachFileButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MessageReasonDropDown}` becomes VISIBLE
When I wait until state of element located `${xpathFor_MessageReasonDropDown}` is ENABLED
When I click on element located `${xpathFor_MessageReasonDropDown}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BillingStatement}` becomes VISIBLE
When I click on element located `${xpathFor_BillingStatement}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SelectNetworkLocation}` becomes VISIBLE
When I wait until state of element located `${xpathFor_SelectNetworkLocation}` is ENABLED
When I click on element located `${xpathFor_SelectNetworkLocation}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SelectIndianapolisMetroFromNetworkLocation}` becomes VISIBLE
When I click on element located `${xpathFor_SelectIndianapolisMetroFromNetworkLocation}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SelectHealthCenter}` becomes VISIBLE
When I wait until state of element located `${xpathFor_SelectHealthCenter}` is ENABLED
When I click on element located `${xpathFor_SelectHealthCenter}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SelectPlainfieldCommonsFromHealthCenter}` becomes VISIBLE
When I click on element located `${xpathFor_SelectPlainfieldCommonsFromHealthCenter}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SendDirectlyToProvider}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SubjectBillingStatement}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_AttachFileButton}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SendMessageButton}` becomes VISIBLE
When I click on element located `${xpathFor_SendMessageButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_errorMsgCannotLeftBlank}` becomes VISIBLE
When I wait `PT30S` with `PT15S` polling until element located `${xpathFor_NewMessageTextArea}` becomes VISIBLE
When I enter `Sending New Message` in field located `${xpathFor_NewMessageTextArea}`
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
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ProviderName}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BillingStatementUnderSentMsgList}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sentDate}` becomes VISIBLE
When I wait until element located `${xpathFor_sentDate}` contains text '#{generateDate(P, M/dd)}'
When I click on element located `${xpathFor_BillingStatementUnderSentMsgList}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SubBillingStatementInRightPane}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ToProviderName}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SentDateAndTime}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MsgBodyInBillingStatement}` becomes VISIBLE
