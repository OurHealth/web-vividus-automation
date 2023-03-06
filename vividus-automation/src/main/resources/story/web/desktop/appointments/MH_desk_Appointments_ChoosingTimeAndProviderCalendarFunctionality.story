Description: As a user, I want to be able to select the appointment visit reason and type to provide efficient and sufficient info for my provider in advance and choose the appropriate communication type

Meta:

    @Epic PT-170[PT-1369]
    @group extended
    @layout desktop
    @appointments
    @Priority 3
    @issueId PT-1369

GivenStories: story/web/desktop/appointments/MH_desk_Appointments_PreRequisiteSteps.story

Scenario: Scenario: [Desktop][Appointments] Choosing Time & Provider: Calendar functionality

When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_clickOnCalendar}` becomes VISIBLE
When I wait until element located `${xpathFor_clickOnCalendar}` contains text '#{generateDate(P, MMM)}'
When I wait until element located `${xpathFor_clickOnCalendar}` contains text '#{generateDate(P, YYYY)}'
When I wait until element located `${xpathFor_CurrentDateInCalendar}` contains text '#{generateDate(P, d)}'
When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_CalendarForwardIcon}` becomes VISIBLE
When I click on element located `${xpathFor_CalendarForwardIcon}`
When I wait until element located `${xpathFor_nextWeekDate}` contains text '#{generateDate(P7D, d)}'
When I click on element located `${xpathFor_FutureDateSelectedInCalendar}`
When I wait until element located `${xpathFor_FutureDateInChooseATimeAndProvider}` contains text '#{generateDate(P7D, MMM)}'

When I scroll context to TOP edge
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_menuAppointments}` becomes VISIBLE
When I click on element located `${xpathFor_menuAppointments}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_cmdScheduleAppointment}` becomes VISIBLE
When I click on element located `${xpathFor_cmdScheduleAppointment}`
When I wait `PT120S` with `PT20S` polling until element located `${xpathFor_Who'sTheVisitFor?}` becomes VISIBLE
When I wait `PT120S` with `PT20S` polling until element located `${xpathFor_DropdownIcon}` becomes VISIBLE
When I wait `PT120S` with `PT20S` polling until element located `${xpathFor_DropdownIcon}` becomes ENABLED
When I click on element located `${xpathFor_DropdownIcon}`
!-- When I click on element located `${xpathFor_DropdownIcon}`

When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_Employee2PatientForScheduling}` becomes VISIBLE
When I click on element located `${xpathFor_Employee2PatientForScheduling}`
When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_SearchFieldSymptomsConditions}` becomes VISIBLE
When I enter `Life Coach` in field located `${xpathFor_SearchFieldSymptomsConditions}`
When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_LifeCoach}` becomes VISIBLE
When I click on element located `${xpathFor_LifeCoach}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_InPersonVisitInSubCategory}` becomes VISIBLE
When I click on element located `${xpathFor_InPersonVisitInSubCategory}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_SearchAvailability}` becomes VISIBLE
When I click on element located `${xpathFor_SearchAvailability}`
When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_ChooseATimeAndProvider}` becomes VISIBLE
When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_NoOpenAppointmentsSlotsTextMsg}` becomes VISIBLE
When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_SearchFollowingWeekButton}` becomes VISIBLE
When I click on element located `${xpathFor_SearchFollowingWeekButton}`
