Description: As a user, I want to be able to select the appointment visit reason and type to provide efficient and sufficient info for my provider in advance and choose the appropriate communication type

Meta:

    @Epic PT-170[PT-1365]
    @group extended
    @layout desktop
    @appointments
    @Priority 3
    @issueId PT-1365


Scenario: [Desktop][Appointments] Pre requisites navigate to Choose A Time And Provider page.


Given I am on the main application page
When I wait until element located `${xpathFor_signInHeader}` contains text '${text_SignIn}'
When I enter `remployee2` in field located `${userNameXpath}`
When I enter `${userPwd}` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ScheduleAnAppointmentButton}` becomes VISIBLE
When I click on element located `${xpathFor_ScheduleAnAppointmentButton}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ScheduleANewAppointment}` becomes VISIBLE
When I scroll context to TOP edge
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_BreadcrumbHome}` becomes VISIBLE
When I click on element located `${xpathFor_BreadcrumbHome}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ScheduleAnAppointmentButton}` becomes VISIBLE
When I click on element located `${xpathFor_ScheduleAnAppointmentButton}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ScheduleANewAppointment}` becomes VISIBLE
When I change context to element located `${xpathFor_Who'sTheVisitFor?}`
When I wait `PT120S` with `PT20S` polling until element located `${xpathFor_Who'sTheVisitFor?}` becomes VISIBLE
When I wait `PT120S` with `PT20S` polling until element located `${xpathFor_DropdownIcon}` becomes VISIBLE
When I wait `PT120S` with `PT20S` polling until element located `${xpathFor_DropdownIcon}` becomes ENABLED
When I click on element located `${xpathFor_DropdownIcon}`
When I click on element located `${xpathFor_DropdownIcon}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_Employee2PatientForScheduling}` becomes VISIBLE
When I click on element located `${xpathFor_Employee2PatientForScheduling}`
When I reset context
When I wait `PT30S` with `PT05S` polling until element located `${xpathFor_SearchFieldSymptomsConditions}` becomes VISIBLE
When I enter `Acne` in field located `${xpathFor_SearchFieldSymptomsConditions}`
When I scroll element located `${xpathFor_Acne}` into view
When I click on element located `${xpathFor_Acne}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_InPersonVisitInSubCategory}` becomes VISIBLE
When I click on element located `${xpathFor_InPersonVisitInSubCategory}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_SearchAvailability}` becomes VISIBLE
When I wait until state of element located `${xpathFor_SearchAvailability}` is ENABLED
When I click on element located `${xpathFor_SearchAvailability}`
When I wait `PT60S` with `PT10S` polling until element located `${xpathFor_ChooseATimeAndProvider}` becomes VISIBLE
