Description: As a user, I want to be able to select the appointment visit reason and type to provide efficient and sufficient info for my provider in advance and choose the appropriate communication type

Meta:

    @Epic PT-170[PT-1375]
    @group extended
    @layout desktop
    @appointments
    @Priority 3
    @issueId PT-1375

GivenStories: story/web/desktop/appointments/MH_desk_Appointments_PreRequisiteSteps1.story

Scenario: [Desktop][Appointments] Select visit reason - Work related injury popup


When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_SearchFieldSymptomsConditions}` becomes VISIBLE
When I enter `Covid Vaccine` in field located `${xpathFor_SearchFieldSymptomsConditions}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_COVIDVaccine}` becomes VISIBLE
When I click on element located `${xpathFor_COVIDVaccine}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_InPersonVisitInSubCategory}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_VideoVisitInSubCategory}` becomes NOT_VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_PhoneVisitInSubCategory}` becomes NOT_VISIBLE
When I click on element located `${xpathFor_InPersonVisitInSubCategory}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_SearchAvailability}` becomes VISIBLE
When I click on element located `${xpathFor_SearchAvailability}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_COVID-19VaccineEligibleAndRegPopup}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_COVID-19VaccineEligibleAndRegPopup}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_CancelButton}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_ScheduleAppointment}` becomes VISIBLE
!-- When I scroll context to BOTTOM edge
When I click on element located `${xpathFor_CancelButton}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_COVID-19VaccineEligibleAndRegPopup}` becomes NOT_VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ScheduleANewAppointment}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_SearchAvailability}` becomes VISIBLE
When I click on element located `${xpathFor_SearchAvailability}`
!-- When I scroll context to BOTTOM edge
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_ScheduleAppointment}` becomes VISIBLE
When I click on element located `${xpathFor_ScheduleAppointment}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_ChooseATimeAndProvider}` becomes VISIBLE
