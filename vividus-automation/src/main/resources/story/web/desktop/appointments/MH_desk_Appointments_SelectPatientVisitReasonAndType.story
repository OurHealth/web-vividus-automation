Description: As a user, I want to be able to see detailed info about available health centers to plan my visits more efficiently

Meta:

    @Epic PT-170[PT-1363]
    @group critical_path
    @layout desktop
    @appointments
    @Priority 2
    @issueId PT-1363


Scenario: [Desktop][Appointments] Select patient, visit reason and types

Given I am on the main application page
When I wait until element located `${xpathFor_signInHeader}` contains text '${text_SignIn}'
When I enter `remployee2` in field located `${userNameXpath}`
When I enter `${userPwd}` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ScheduleAnAppointmentButton}` becomes VISIBLE
When I click on element located `${xpathFor_ScheduleAnAppointmentButton}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ScheduleANewAppointment}` becomes VISIBLE
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/User/get-family-members?schedulable=true`
Then the response code is equal to '200'
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_CompleteTheseStepsToSearchAvailability}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_COVID-19Disclaimer}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_COVID-19DisclaimerMessage}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_Who'sTheVisitFor?}` becomes VISIBLE
When I wait until state of element located `${xpathFor_Who'sTheVisitFor?}` is ENABLED
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_What'sTheVisitReason?}` becomes VISIBLE
When I wait until state of element located `${xpathFor_SearchAvailability}` is DISABLED
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
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_Dependent2PatientForScheduling}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_Spouse2PatientForScheduling}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_Employee2PatientForScheduling}` becomes VISIBLE
When I click on element located `${xpathFor_Child2PatientForScheduling}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_Child2SelectedInVisitForDropDown}` becomes VISIBLE
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/Appointment/visit-reason-categories/1217092`
Then the response code is equal to '200'
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_SearchFieldSymptomsConditions}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_IfEmergencyCall911TextMsg}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_LinkEmergencyReasons}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_SymptomListOfCategory}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_PhysicalExamListOfCategory}` becomes VISIBLE
When I click on element located `${xpathFor_SymptomListOfCategory}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_AbdominalPainListOfSubCategory}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_AllergiesSneezingListOfSubCategory}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_BackIconInSearchCategory}` becomes VISIBLE
When I click on element located `${xpathFor_BackIconInSearchCategory}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_SearchFieldSymptomsConditions}` becomes VISIBLE
When I enter `stomach` in field located `${xpathFor_SearchFieldSymptomsConditions}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_SymptomListOfCategory}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_COVID-19InCategory}` becomes NOT_VISIBLE
When I click on element located `${xpathFor_SymptomListOfCategory}`
When I enter `stomach` in field located `${xpathFor_SearchFieldSymptomsConditions}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_AbdominalPainListOfSubCategory}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_AbscessInSubCategory}` becomes NOT_VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_AcidRefluxInSubCategory}` becomes VISIBLE
When I click on element located `${xpathFor_AcidRefluxInSubCategory}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_InPersonVisitInSubCategory}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_VideoVisitInSubCategory}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_PhoneVisitInSubCategory}` becomes VISIBLE
When I click on element located `${xpathFor_InPersonVisitInSubCategory}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_VideoVisitInSubCategory}` becomes NOT_VISIBLE
When I wait until state of element located `${xpathFor_SearchAvailability}` is ENABLED
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_InPersonVisitInSubCategory}` becomes VISIBLE
When I click on element located `${xpathFor_InPersonVisitInSubCategory}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_VideoVisitInSubCategory}` becomes VISIBLE
When I click on element located `${xpathFor_VideoVisitInSubCategory}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_WhatStateWillYouBeIn}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_SearchStates}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_AlaskaStates}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_ArizonaStates}` becomes VISIBLE
When I enter `Test` in field located `${xpathFor_SearchStates}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_AlaskaStates}` becomes NOT_VISIBLE
When I clear field located `${xpathFor_SearchStates}` using keyboard
When I enter `California` in field located `${xpathFor_SearchStates}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_CaliforniaStates}` becomes VISIBLE
When I click on element located `${xpathFor_CaliforniaStates}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_AlaskaStates}` becomes NOT_VISIBLE
When I wait until state of element located `${xpathFor_SearchAvailability}` is ENABLED
