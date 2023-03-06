Description: As a user, I want to be able to select the appointment visit reason and type to provide efficient and sufficient info for my provider in advance and choose the appropriate communication type

Meta:

    @Epic PT-170[PT-1368]
    @group extended
    @layout chrome_phone
    @appointments
    @Priority 3
    @issueId PT-1368

GivenStories: story/web/mobileView/appointments/MH_mob_Appointments_PreRequisiteSteps.story

Scenario: [Mobile][Appointments] Choosing Time & Provider: screen view and navigation

When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_BrookeCurryInProviderSection}` becomes NOT_VISIBLE
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_NetworkFilter}` becomes VISIBLE
When I click on element located `${xpathFor_NetworkFilter}`
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_LocationAndNetworkPopup}` becomes VISIBLE
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_CincinnatiMetroInLocationAndNetworkPopup}` becomes VISIBLE
When I click on element located `${xpathFor_CincinnatiMetroInLocationAndNetworkPopup}`
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_ApplyFiltersButton}` becomes VISIBLE
When I click on element located `${xpathFor_ApplyFiltersButton}`
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_BrookeCurryInProviderSection}` becomes NOT_VISIBLE
When I wait `PT120S` with `PT20S` polling until element located `${xpathFor_JacquelineKerberInProviderSection}` becomes VISIBLE
When I wait `PT120S` with `PT20S` polling until element located `${xpathFor_NetworkFilter1}` becomes ENABLED
When I wait `PT120S` with `PT20S` polling until element located `${xpathFor_NetworkFilter1}` becomes VISIBLE
When I wait until state of element located `${xpathFor_NetworkFilter1}` is ENABLED
When I click on element located `${xpathFor_NetworkFilter1}`
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_LocationAndNetworkPopup}` becomes VISIBLE
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_IndianapolisMetroInLocationAndNetworkPopup}` becomes VISIBLE
When I click on element located `${xpathFor_IndianapolisMetroInLocationAndNetworkPopup}`
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_ApplyFiltersButton}` becomes VISIBLE
When I click on element located `${xpathFor_ApplyFiltersButton}`
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_BrookeCurryInProviderSection}` becomes VISIBLE
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_AllProviders}` becomes VISIBLE
When I click on element located `${xpathFor_AllProviders}`
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_BrookeCurryCheckBox}` becomes VISIBLE
When I click on element located `${xpathFor_BrookeCurryCheckBox}`
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_ApplyFiltersButton}` becomes VISIBLE
When I click on element located `${xpathFor_ApplyFiltersButton}`
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_BrookeCurryInProviderSection}` becomes NOT_VISIBLE
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_MultipleProviders}` becomes VISIBLE
When I click on element located `${xpathFor_MultipleProviders}`
When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_ChooseATimeAndProvider}` becomes VISIBLE
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_BrookeCurryCheckBox}` becomes VISIBLE
When I click on element located `${xpathFor_BrookeCurryCheckBox}`
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_ApplyFiltersButton}` becomes VISIBLE
When I click on element located `${xpathFor_ApplyFiltersButton}`
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_BrookeCurryInProviderSection}` becomes VISIBLE
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_AllHealthCenters}` becomes VISIBLE
When I click on element located `${xpathFor_AllHealthCenters}`
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_GreenwoodSpringsInHealthCenterPopup}` becomes VISIBLE
When I click on element located `${xpathFor_GreenwoodSpringsInHealthCenterPopup}`
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_ApplyFiltersButton}` becomes VISIBLE
When I click on element located `${xpathFor_ApplyFiltersButton}`
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_BrookeCurryInProviderSection}` becomes NOT_VISIBLE
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_AppointmentsBreadcrumb}` becomes VISIBLE
When I click on element located `${xpathFor_AppointmentsBreadcrumb}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ScheduleANewAppointment}` becomes VISIBLE
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
When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_SymptomListOfCategory}` becomes VISIBLE
When I click on element located `${xpathFor_SymptomListOfCategory}`
When I wait `PT30S` with `PT15S` polling until element located `${xpathFor_SearchFieldSymptomsConditions}` becomes VISIBLE
When I click on element located `${xpathFor_Acne}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_PhoneVisitInSubCategory}` becomes VISIBLE
When I click on element located `${xpathFor_PhoneVisitInSubCategory}`
When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_AlaskaStates}` becomes VISIBLE
When I click on element located `${xpathFor_AlaskaStates}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_SearchAvailability}` becomes VISIBLE
When I click on element located `${xpathFor_SearchAvailability}`
When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_ChooseATimeAndProvider}` becomes VISIBLE
When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_AllProvidersDisabled}` becomes VISIBLE
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_AllHealthCenters}` becomes NOT_VISIBLE
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_NetworkFilter}` becomes VISIBLE
When I click on element located `${xpathFor_NetworkFilter}`
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_LocationAndNetworkPopup}` becomes VISIBLE
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_Anywhere}` becomes VISIBLE
When I click on element located `${xpathFor_Anywhere}`
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_ApplyFiltersButton}` becomes VISIBLE
When I click on element located `${xpathFor_ApplyFiltersButton}`
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_AnitaBhagatProvider}` becomes VISIBLE
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_AfterHoursAppointments}` becomes VISIBLE
When I click on element located `${xpathFor_AfterHoursAppointments}`
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_ForCareOutsideOfMonFriTxtMsgInMob}` becomes VISIBLE
