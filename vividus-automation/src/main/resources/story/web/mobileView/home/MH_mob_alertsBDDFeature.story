Description: As a patient/user, I want to see important announcements as alerts to be efficiently and promptly informed on the most notable changes

Meta:

    @Epic PT-170[PT-420]
    @group critical_path
    @layout chrome_phone
    @articles
    @Priority 1


GivenStories: story/web/mobileView/logIn/MH_mob_LoginPrecondition.story


Scenario: [Mobile][Alerts] View and Navigation

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_alert2_OverTheCounterMedication}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_alert2_dateForAlert2}` becomes VISIBLE
When I click on element located `${xpathFor_alert2_OverTheCounterMedication}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_alert2Title_OverTheCounterMedication}` becomes VISIBLE
When I scroll element located `${xpathFor_alert2_PrivacyPolicyLink}` into view
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobAlertClose}` becomes VISIBLE
When I click on element located `${xpathFor_mobAlertClose}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_alert1_downLoadOurApp}` becomes VISIBLE
When I click on element located `${xpathFor_alert1_downLoadOurApp}`
When I wait until element located `${xpathFor_popup_downLoadOurApp}` appears
When I click on element located `${xpathFor_mobAlertClose}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_alert1_downLoadOurApp}` becomes VISIBLE
When I click on element located `${xpathFor_alert1_downLoadOurApp}`
When I wait until element located `${xpathFor_popup_downLoadOurApp}` appears
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_text_youCanDownLoadMHMobileApp}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_iosLinkInDownLoadOurAppPopup}` becomes VISIBLE
When I click on element located `${xpathFor_iosLinkInDownLoadOurAppPopup}`
When I switch to a new window
