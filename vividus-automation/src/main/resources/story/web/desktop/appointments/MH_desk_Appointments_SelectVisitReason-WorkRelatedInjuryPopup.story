Description: As a user, I want to be able to select the appointment visit reason and type to provide efficient and sufficient info for my provider in advance and choose the appropriate communication type

Meta:

    @Epic PT-170[PT-1374]
    @group extended
    @layout desktop
    @appointments
    @Priority 3
    @issueId PT-1374

GivenStories: story/web/desktop/appointments/MH_desk_Appointments_PreRequisiteSteps1.story

Scenario: [Desktop][Appointments] Select visit reason - Work related injury popup

When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_SearchFieldSymptomsConditions}` becomes VISIBLE
When I enter `Physical Therapy` in field located `${xpathFor_SearchFieldSymptomsConditions}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_PhysicalTherapy}` becomes VISIBLE
When I click on element located `${xpathFor_PhysicalTherapy}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_IsThisWorkRelatedInjuryPopup}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_CloseButton}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_ContinueScheduling}` becomes VISIBLE
When I click on element located `${xpathFor_ContinueScheduling}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_IsThisWorkRelatedInjuryPopup}` becomes NOT_VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_PhysicalTherapy}` becomes VISIBLE
