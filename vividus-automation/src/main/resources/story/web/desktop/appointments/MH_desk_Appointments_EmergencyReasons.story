Description: As a user, I want to be able to select the appointment visit reason and type to provide efficient and sufficient info for my provider in advance and choose the appropriate communication type

Meta:

    @Epic PT-170[PT-1371]
    @group critical_path
    @layout desktop
    @appointments
    @Priority 2
    @issueId PT-1371

GivenStories: story/web/desktop/appointments/MH_desk_Appointments_PreRequisiteSteps1.story

Scenario: [Desktop][Appointments] Select patient, visit reason and types



When I wait `PT60S` with `PT15S` polling until element located `${xpathFor_LinkEmergencyReasons}` becomes VISIBLE
When I click on element located `${xpathFor_LinkEmergencyReasons}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_IfEmergencyPleaseCall911Popup}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_ContinueScheduling}` becomes VISIBLE
When I click on element located `${xpathFor_ContinueScheduling}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_IfEmergencyPleaseCall911Popup}` becomes NOT_VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_SearchFieldSymptomsConditions}` becomes VISIBLE
When I enter `Behavioral Health` in field located `${xpathFor_SearchFieldSymptomsConditions}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_BehavioralHealth}` becomes VISIBLE
When I click on element located `${xpathFor_BehavioralHealth}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_IfEmergencyPlsCall191Popup}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_ContinueScheduling}` becomes VISIBLE
When I click on element located `${xpathFor_ContinueScheduling}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_IfEmergencyPlsCall191Popup}` becomes NOT_VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ScheduleANewAppointment}` becomes VISIBLE
When I click on element located `${xpathFor_ScheduleANewAppointment}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_InPersonVisitInSubCategory}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_VideoVisitInSubCategory}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_PhoneVisitInSubCategory}` becomes VISIBLE
When I click on element located `${xpathFor_InPersonVisitInSubCategory}`
When I change context to element located `${xpathFor_ClickOnBehavioralHealthSelected}`
When I wait `PT120S` with `PT20S` polling until element located `${xpathFor_ClickOnBehavioralHealthSelected}` becomes VISIBLE
When I wait until state of element located `${xpathFor_ClickOnBehavioralHealthSelected}` is ENABLED
When I click on element located `${xpathFor_ClickOnBehavioralHealthSelected}`
When I click on element located `${xpathFor_ClickOnBehavioralHealthSelected}`
When I reset context
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_SearchFieldSymptomsConditions}` becomes VISIBLE
When I enter `Symptom` in field located `${xpathFor_SearchFieldSymptomsConditions}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_SymptomListOfCategory}` becomes VISIBLE
When I click on element located `${xpathFor_SymptomListOfCategory}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_AbdominalPainListOfSubCategory}` becomes VISIBLE
When I click on element located `${xpathFor_AbdominalPainListOfSubCategory}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_IfEmergencyPleaseCall911Popup}` becomes VISIBLE
