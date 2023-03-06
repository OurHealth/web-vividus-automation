Description: As a user, I want to be able to select the appointment visit reason and type to provide efficient and sufficient info for my provider in advance and choose the appropriate communication type

Meta:

    @Epic PT-170[PT-1367]
    @group critical_path
    @layout desktop
    @appointments
    @Priority 2
    @issueId PT-1367

GivenStories: story/web/desktop/appointments/MH_desk_Appointments_PreRequisiteSteps.story

Scenario: [Desktop][Appointments] Choosing Time & Provider: Filtering slots


When I wait `PT60S` with `PT10S` polling until element located `${xpathFor_BrookeCurryInProviderSection}` becomes NOT_VISIBLE
When I wait `PT60S` with `PT20S` polling until element located `${xpathFor_AnyAvailability}` becomes VISIBLE
When I wait `PT120S` with `PT20S` polling until element located `${xpathFor_AnyAvailability}` becomes ENABLED
When I click on element located `${xpathFor_AnyAvailability}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_AvailabilityPopup}` becomes VISIBLE
When I click on element located `${xpathFor_MorningAvailability}`
When I click on element located `${xpathFor_AfternoonAvailability}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_EveningAvailability}` becomes VISIBLE
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_ApplyFiltersButton}` becomes VISIBLE
When I click on element located `${xpathFor_ApplyFiltersButton}`
When I wait `PT120S` with `PT20S` polling until element located `${xpathFor_NetworkFilter1}` becomes ENABLED
When I wait `PT120S` with `PT20S` polling until element located `${xpathFor_NetworkFilter1}` becomes VISIBLE
When I click on element located `${xpathFor_NetworkFilter1}`
When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_IndianapolisMetroInLocationAndNetworkPopup}` becomes VISIBLE
When I click on element located `${xpathFor_IndianapolisMetroInLocationAndNetworkPopup}`
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_ApplyFiltersButton}` becomes VISIBLE
When I click on element located `${xpathFor_ApplyFiltersButton}`
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_BrookeCurryInProviderSection}` becomes VISIBLE
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_AllProviders}` becomes VISIBLE
When I click on element located `${xpathFor_AllProviders}`
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_ProviderOption1}` becomes VISIBLE
When I click on element located `${xpathFor_ProviderOption1}`
When I click on element located `${xpathFor_ApplyFiltersButton}`
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_BrookeCurryInProviderSection}` becomes NOT_VISIBLE
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_MultipleProviders}` becomes VISIBLE
When I click on element located `${xpathFor_MultipleProviders}`
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_BrookeCurryCheckBox}` becomes VISIBLE
When I click on element located `${xpathFor_BrookeCurryCheckBox}`
When I click on element located `${xpathFor_ApplyFiltersButton}`
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_BrookeCurryInProviderSection}` becomes VISIBLE
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_AllHealthCenters}` becomes VISIBLE
When I click on element located `${xpathFor_AllHealthCenters}`
When I click on element located `${xpathFor_Option1Inpopup}`
When I click on element located `${xpathFor_Option2Inpopup}`
When I click on element located `${xpathFor_ApplyFiltersButton}`
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_BrookeCurryInProviderSection}` becomes NOT_VISIBLE
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_menuAppointments}` becomes VISIBLE
When I click on element located `${xpathFor_menuAppointments}`
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_cmdScheduleAppointment}` becomes VISIBLE
When I click on element located `${xpathFor_cmdScheduleAppointment}`
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
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_VideoVisitInSubCategory}` becomes VISIBLE
When I click on element located `${xpathFor_VideoVisitInSubCategory}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_AlaskaStates}` becomes VISIBLE
When I click on element located `${xpathFor_AlaskaStates}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_SearchAvailability}` becomes VISIBLE
When I click on element located `${xpathFor_SearchAvailability}`
When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_ChooseATimeAndProvider}` becomes VISIBLE
When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_AashaTrowbridge}` becomes VISIBLE
When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_AfterHoursAppointments}` becomes VISIBLE
When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_ForCareOutsideOfMonFriTxtMsg}` becomes VISIBLE
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_AllHealthCenters}` becomes NOT_VISIBLE
When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_Anywhere}` becomes VISIBLE
When I click on element located `${xpathFor_Anywhere}`
When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_CincinnatiMetroInLocationAndNetworkPopup}` becomes VISIBLE
When I click on element located `${xpathFor_CincinnatiMetroInLocationAndNetworkPopup}`
When I click on element located `${xpathFor_ApplyFiltersButton}`
When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_AllProvidersDisabledInFilters}` becomes VISIBLE
