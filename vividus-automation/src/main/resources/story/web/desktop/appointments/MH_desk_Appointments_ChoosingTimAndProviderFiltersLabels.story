Description: As a user, I want to be able to select the appointment visit reason and type to provide efficient and sufficient info for my provider in advance and choose the appropriate communication type

Meta:

    @Epic PT-170[PT-1405]
    @group extended
    @layout desktop
    @appointments
    @Priority 3
    @issueId PT-1405

GivenStories: story/web/desktop/appointments/MH_desk_Appointments_PreRequisiteSteps.story

Scenario: [Desktop][Appointments] Choosing Time & Provider: Filters labels

When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_AllProviders}` becomes VISIBLE
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_CincinnatiMetroNetworkFilter}` becomes VISIBLE
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_USMountainMDT}` becomes VISIBLE
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_AnyAvailability}` becomes VISIBLE
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_AllHealthCenters}` becomes VISIBLE
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_AnyAvailability}` becomes VISIBLE
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_AnyAvailability}` becomes ENABLED
When I click on element located `${xpathFor_AnyAvailability}`
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_MorningAvailability}` becomes VISIBLE
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_AfternoonAvailability}` becomes VISIBLE
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_EveningAvailability}` becomes VISIBLE
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_ApplyFiltersButton}` becomes VISIBLE
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_ClearAvailabilityFilters}` becomes VISIBLE
When I click on element located `${xpathFor_ApplyFiltersButton}`
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_AnyAvailability}` becomes VISIBLE
When I click on element located `${xpathFor_AllProviders}`
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_ListOfAvailableProviders}` becomes VISIBLE
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_ApplyFiltersButton}` becomes VISIBLE
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_ClearProviderFilters}` becomes VISIBLE
When I click on element located `${xpathFor_ProviderOption1}`
When I click on element located `${xpathFor_ProviderOption2}`
When I click on element located `${xpathFor_ProviderOption3}`
When I click on element located `${xpathFor_ProviderOption4}`
When I click on element located `${xpathFor_ApplyFiltersButton}`
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_Provider}` becomes VISIBLE
When I click on element located `${xpathFor_Provider}`
When I click on element located `${xpathFor_ProviderOption1}`
When I click on element located `${xpathFor_ProviderOption2}`
When I click on element located `${xpathFor_ApplyFiltersButton}`
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_MultipleProviders}` becomes VISIBLE
When I wait `PT60S` with `PT30S` polling until element located `${xpathFor_AllHealthCenters}` becomes VISIBLE
When I wait `PT60S` with `PT30S` polling until element located `${xpathFor_AllHealthCenters}` becomes ENABLED
When I click on element located `${xpathFor_AllHealthCenters}`
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_HealthCenterPopup}` becomes VISIBLE
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_ListOfAvailableCenters}` becomes VISIBLE
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_ApplyFiltersButton}` becomes VISIBLE
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_ClearHealthCenterFiltersButton}` becomes VISIBLE
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_SpringdaleTownCenter}` becomes VISIBLE
When I click on element located `${xpathFor_SpringdaleTownCenter}`
When I click on element located `${xpathFor_ApplyFiltersButton}`
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_SpringdaleTownCenterSelectedInHealthCenterFilter}` becomes VISIBLE
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_NetworkFilter1}` becomes VISIBLE
When I click on element located `${xpathFor_NetworkFilter1}`
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_LocationAndNetworkPopup}` becomes VISIBLE
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_ApplyFiltersButton}` becomes VISIBLE
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_ListOfAvailableNetworks}` becomes VISIBLE
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_CincinnatiMetroInLocationAndNetworkPopup}` becomes VISIBLE
When I click on element located `${xpathFor_CincinnatiMetroInLocationAndNetworkPopup}`
When I click on element located `${xpathFor_ApplyFiltersButton}`
When I wait `PT60S` with `PT20S` polling until element located `${xpathFor_IndianapolisMetro}` becomes NOT_VISIBLE
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_CincinnatiMetroNetworkFilter}` becomes VISIBLE
