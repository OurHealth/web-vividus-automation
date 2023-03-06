Description: As a user, I want to be able to select the appointment visit reason and type to provide efficient and sufficient info for my provider in advance and choose the appropriate communication type

Meta:

    @Epic PT-170[MHPF-283]
    @group critical_path
    @layout desktop
    @appointments
    @Priority 2
    @issueId MHPF-283

GivenStories: story/web/desktop/appointments/MH_desk_Appointments_PreRequisiteSteps.story

Scenario: [Desktop][Appointments] Choosing Time & Provider: screen view and navigation

When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/Appointment/open-appointments`
Then the response code is equal to '200'
When I wait `PT120S` with `PT20S` polling until element located `${xpathFor_ProviderDateAndTime}` becomes VISIBLE
When I wait until element located `${xpathFor_ProviderDateAndTime}` contains text '#{generateDate(P, MMM)}'
When I wait until element located `${xpathFor_ProviderDateAndTime}` contains text '#{generateDate(P, d)}'
When I wait until element located `${xpathFor_ProviderDateAndTime}` contains text '#{generateDate(P, EEE)}'
When I wait `PT20S` with `PT20S` polling until element located `${xpathFor_ProviderNameSection}` becomes VISIBLE
When I wait `PT20S` with `PT20S` polling until element located `${xpathFor_InPersonVisitInTimeAndProvider}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ClinicName}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ClinicAddress}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ClinicPhoneNumber}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DistanceMi}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ViewMapLink}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_AvailableTimeSlots}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_NoMoreAppointmentsForThisDayTxtMsg}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SearchNextAvailableDayButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CalendarInChooseATimeAndProvider}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_FilterSection}` becomes VISIBLE
When I click on element located `${xpathFor_ViewMapLinkInProvider1}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CloseMap}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_MapDisplay}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ClinicNameInMapsSection}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ClinicAddressInMaps}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DistanceInMap}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DirectionsInMapSection}` becomes VISIBLE
When I click on element located `${xpathFor_DirectionsInMapSection}`
When I switch to a new window
When I close the current window
When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_LocateClinicCoordinatesInMap}` becomes VISIBLE
When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_CloseMap}` becomes VISIBLE
When I click on element located `${xpathFor_CloseMap}`
When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_MapDisplay}` becomes NOT_VISIBLE
When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_ViewMapInChooseTime}` becomes VISIBLE
When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_SearchNextAvailableDayButton}` becomes VISIBLE
When I click on element located `${xpathFor_SearchNextAvailableDayButton}`
When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_NextDayAvailable}` becomes VISIBLE
When I wait until element located `${xpathFor_NextDayAvailable}` contains text '#{generateDate(P1D, d)}'
