Description: As a patient/user, I want to be able to sent new messages from New Messages.


Meta:

    @Epic [PT-645] PT-1324
    @group critical_path
    @layout desktop
    @messages
    @Priority 2
    @issueId PT-1324

Scenario: [Desktop][Medication Refill] Request medication for Employee

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
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_MessageReasonDropDown}` becomes ENABLED
When I wait until state of element located `${xpathFor_MessageReasonDropDown}` is ENABLED
When I click on element located `${xpathFor_MessageReasonDropDown}`
When I click on element located `${xpathFor_MessageReasonDropDown}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UploadAMedicalDocumentOrLabOrder}` becomes VISIBLE
When I click on element located `${xpathFor_UploadAMedicalDocumentOrLabOrder}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_AllMessagesSentToYourHealthCenterAreReviewedTextMsg}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SelectHealthCenter}` becomes VISIBLE
When I wait until state of element located `${xpathFor_SelectHealthCenter}` is ENABLED
When I click on element located `${xpathFor_SelectHealthCenter}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SelectAnOptionFromHealthCenter}` becomes VISIBLE
When I click on element located `${xpathFor_SelectAnOptionFromHealthCenter}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SendDirectlyToProvider}` becomes VISIBLE
When I wait until state of element located `${xpathFor_SendDirectlyToProvider}` is ENABLED
When I click on element located `${xpathFor_SendDirectlyToProvider}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SelectAProviderFromDropdown}` becomes VISIBLE
When I click on element located `${xpathFor_SelectAProviderFromDropdown}`
When I wait `PT30S` with `PT15S` polling until element located `${xpathFor_NewMessageTextArea}` becomes VISIBLE
When I enter `Saving message body in draft` in field located `${xpathFor_NewMessageTextArea}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SaveDraftButton}` becomes VISIBLE
When I click on element located `${xpathFor_SaveDraftButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_YourDraftHasBeenSaved}` becomes VISIBLE
When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/Messaging/new-message`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_InboxInMessages}` becomes VISIBLE
When I click on element located `${xpathFor_InboxInMessages}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DraftOptionInInBox}` becomes VISIBLE
When I click on element located `${xpathFor_DraftOptionInInBox}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DraftOptionSelectedInInBox}` becomes VISIBLE
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com//Messaging/mailbox-conversations?mailboxType=draft`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_NewMessageButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ListOfMessages}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ProviderNameInDraftbox}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UploadAMedicalDocumentAsSubInDraftbox}` becomes VISIBLE
When I wait until element located `${xpathFor_DraftDateIsShown}` contains text '#{generateDate(P, MM/dd)}'
When I click on element located `${xpathFor_UploadAMedicalDocumentAsSubInDraftbox}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SubjectUploadAMedicalDocumentInRightPane}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ProviderNameInMsgDetails}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SentDateAndTime}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MessageBodyInDrafts}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_EditButton}` becomes VISIBLE
When I click on element located `${xpathFor_EditButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DraftAsHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_PrefilledUploadAMedicalDocumentAsMsgReasonInDrafts}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_PrefilledKingsMillsAsHealthCenterInDrafts}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_PrefilledElizabethHooverAsToProviderNameInDrafts}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_PrefilledMessageBodyInDrafts}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CancelButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SaveDraftButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SendMessageButton}` becomes VISIBLE
When I enter `Saving message body in draft - changed draft message` in field located `${xpathFor_NewMessageTextArea}`
When I click on element located `${xpathFor_CancelButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DraftOptionSelectedInInBox}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdatedMessageBodyInDrafts}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_EditButton}` becomes VISIBLE
When I click on element located `${xpathFor_EditButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_PrefilledUploadAMedicalDocumentAsMsgReasonInDrafts}` becomes VISIBLE
When I wait until state of element located `${xpathFor_PrefilledUploadAMedicalDocumentAsMsgReasonInDrafts}` is ENABLED
When I click on element located `${xpathFor_PrefilledUploadAMedicalDocumentAsMsgReasonInDrafts}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BillingStatement}` becomes VISIBLE
When I click on element located `${xpathFor_BillingStatement}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SelectHealthCenter}` becomes VISIBLE
When I wait until state of element located `${xpathFor_SelectHealthCenter}` is ENABLED
When I click on element located `${xpathFor_SelectHealthCenter}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SelectAnOptionFromHealthCenter}` becomes VISIBLE
When I click on element located `${xpathFor_SelectAnOptionFromHealthCenter}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SendDirectlyToProvider}` becomes VISIBLE
When I wait until state of element located `${xpathFor_SendDirectlyToProvider}` is ENABLED
When I click on element located `${xpathFor_SendDirectlyToProvider}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SelectAProviderFromDropdown}` becomes VISIBLE
When I click on element located `${xpathFor_SelectAProviderFromDropdown}`
When I enter `Saving message body in draft - changed draft message` in field located `${xpathFor_NewMessageTextArea}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SaveDraftButton}` becomes VISIBLE
When I click on element located `${xpathFor_SaveDraftButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DraftOptionSelectedInInBox}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_NewSubjectBillingStatementInDrafts}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdatedMessageBodyInDrafts}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DeleteButton}` becomes VISIBLE
When I click on element located `${xpathFor_DeleteButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DraftDeleted}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DraftOptionSelectedInInBox}` becomes VISIBLE
When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/Messaging/delete-draft?messageId=`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_NewSubjectBillingStatementInDrafts}` becomes NOT_VISIBLE
