Description: As a user, I want to be able to select the appointment visit reason and type to provide efficient and sufficient info for my provider in advance and choose the appropriate communication type

Meta:

    @Epic PT-170[PT-1373]
    @group critical_path
    @layout desktop
    @appointments
    @Priority 2
    @issueId PT-1373


Scenario: [Desktop][Appointments] Select state - No available providers popup

Given I am on the main application page
When I wait until element located `${xpathFor_signInHeader}` contains text '${text_SignIn}'
When I enter `remployee2` in field located `${userNameXpath}`
When I enter `${userPwd}` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ScheduleAnAppointmentButton}` becomes VISIBLE
When I click on element located `${xpathFor_ScheduleAnAppointmentButton}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ScheduleANewAppointment}` becomes VISIBLE
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
When I reset context
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_Child2PatientForScheduling}` becomes VISIBLE
When I click on element located `${xpathFor_Child2PatientForScheduling}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_SearchFieldSymptomsConditions}` becomes VISIBLE
When I enter `Life Coach` in field located `${xpathFor_SearchFieldSymptomsConditions}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_LifeCoach}` becomes VISIBLE
When I click on element located `${xpathFor_LifeCoach}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_PhoneVisitInSubCategory}` becomes VISIBLE
When I click on element located `${xpathFor_PhoneVisitInSubCategory}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_AlaskaStates}` becomes VISIBLE
When I click on element located `${xpathFor_AlaskaStates}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_NoProvidersForTheStateYouSelected}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_CloseButton}` becomes VISIBLE
When I click on element located `${xpathFor_CloseButton}`
When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_AlaskaStates}` becomes NOT_VISIBLE
When I wait until state of element located `${xpathFor_SearchAvailability}` is DISABLED
