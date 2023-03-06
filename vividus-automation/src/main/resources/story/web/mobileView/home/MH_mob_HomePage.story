Description: | As a user, I want to have constant elements of the UI, so that I could navigate the app more easily


Meta:

    @Epic PT-170[Jira-183]
    @group smoketest
    @layout chrome_phone
    @home_page
    @Priority 1

    GivenStories: story/web/mobileView/logIn/MH_mob_LoginPrecondition.story

Scenario: [Mobile][Main page] View and navigation

When I wait until element located `${xpathFor_marathonHealthLogo}` appears
When I scroll context to TOP edge
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobHamburgerMenuIcon}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobProfileMenu}` becomes VISIBLE
When I click on element located `${xpathFor_mobProfileMenu}`
When I wait until element located `${xpathFor_mobProfileSideMenu}` contains text '${text_userName}'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_profileAndSettings}` becomes VISIBLE
When I click on element located `${xpathFor_mobProfileMenuCloseIcon}`
When I wait until element located `${xpathFor_News}` appears
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobHamburgerMenuIcon}` becomes VISIBLE
When I click on element located `${xpathFor_mobHamburgerMenuIcon}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobHome}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobMenuAppointments}` becomes VISIBLE
When I click on element located `${xpathFor_mobMenuAppointments}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobCmdScheduleAppointment}` becomes VISIBLE
When I click on element located `${xpathFor_mobMenuAppointments}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobCmdScheduleAppointment}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobMenuMedicationRefills}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobMenuMyHealth}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobMenuWellness}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobMenuResources}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobMenuHelp}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobMenuMedicationRefills}` becomes VISIBLE
When I click on element located `${xpathFor_mobMenuMedicationRefills}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobMedicRefillRequest}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobBreadcrumbHome}` becomes VISIBLE
When I click on element located `${xpathFor_mobBreadcrumbHome}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_textHowCanIHelpyouToday}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_textMyIncentivesStatus}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_News}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sectionWhatsNew}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_quickLinks}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_sectionWeAreHereToHelp}` becomes VISIBLE
When I wait until element located `${xpathFor_footerAccessbilityStatement}` appears
When I wait until element located `${xpathFor_footerTermsOfUse}` appears
When I wait until element located `${xpathFor_footerPrivacyPolicy}` appears
When I wait until element located `${xpathFor_footerPrivacyPractices}` appears
