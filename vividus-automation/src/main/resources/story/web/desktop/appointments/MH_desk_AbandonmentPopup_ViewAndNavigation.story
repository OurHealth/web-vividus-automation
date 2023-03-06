Description: As a user, I want to be able to select the appointment visit reason and type to provide efficient and sufficient info for my provider in advance and choose the appropriate communication type

Meta:

    @Epic PT-170[MHPF-466]
    @group smoketest
    @layout desktop
    @appointments
    @Priority 1
    @issueId MHPF-466

GivenStories: story/web/desktop/logIn/MH_desk_LogInAsremployee2.story

Scenario: [Desktop][Abandonment popup] View and navigation

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
When I wait `PT30S` with `PT05S` polling until element located `${xpathFor_SymptomListOfCategory}` becomes VISIBLE
When I click on element located `${xpathFor_SymptomListOfCategory}`
When I wait `PT30S` with `PT15S` polling until element located `${xpathFor_SearchFieldSymptomsConditions}` becomes VISIBLE
When I click on element located `${xpathFor_Acne}`
When I wait `PT30S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE
When I click on element located `${xpathFor_homeButton}`
When I click on element located `${xpathFor_homeButton}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_ExitScheduling}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_PleaseSelectDropDown}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_SubmitAndExit}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_BackToScheduling}` becomes VISIBLE
When I click on element located `${xpathFor_BackToScheduling}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_ScheduleANewAppointment}` becomes VISIBLE
When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/Appointment/abandon-appointment`
Then the response code is equal to '200'
When I wait `PT30S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE
When I click on element located `${xpathFor_homeButton}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_ExitSchedulingPopup}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_YourAppointmentWon'tBeSavedTxtMsgInPopup}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_PleaseSelectDropDown}` becomes NOT_VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_NoStayButton}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_YesExitButton}` becomes VISIBLE
When I click on element located `${xpathFor_NoStayButton}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_ExitSchedulingPopup}` becomes NOT_VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_ScheduleANewAppointment}` becomes VISIBLE
When I wait `PT30S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE
When I click on element located `${xpathFor_homeButton}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_ExitSchedulingPopup}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_YesExitButton}` becomes VISIBLE
When I click on element located `${xpathFor_YesExitButton}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathfor_EnvironmentNotification}` becomes VISIBLE
