Description: As a user, I want to be able to select the appointment visit reason and type to provide efficient and sufficient info for my provider in advance and choose the appropriate communication type

Meta:

    @Epic PT-170[PT-1366]
    @group extended
    @layout chrome_phone
    @appointments
    @Priority 3
    @issueId PT-1366


Scenario: [Mobile][Appointments] Choosing Time & Provider: screen view and navigation


Given I am on the main application page
When I wait until element located `${xpathFor_signInHeader}` contains text '${text_SignIn}'
When I enter `remployee2` in field located `${userNameXpath}`
When I enter `${userPwd}` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_ScheduleAnAppointmentButtonInMob}` becomes VISIBLE
When I click on element located `${xpathFor_ScheduleAnAppointmentButtonInMob}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ScheduleANewAppointment}` becomes VISIBLE
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_BreadcrumbHome}` becomes VISIBLE
When I click on element located `${xpathFor_BreadcrumbHome}`
When I wait `PT20S` with `PT10S` polling until element located `${xpathFor_ScheduleAnAppointmentButtonInMob}` becomes VISIBLE
When I click on element located `${xpathFor_ScheduleAnAppointmentButtonInMob}`
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
When I wait `PT60S` with `PT20S` polling until element located `${xpathFor_What'sTheVisitReason?}` becomes VISIBLE
When I click on element located `${xpathFor_What'sTheVisitReason?}`
When I wait `PT30S` with `PT15S` polling until element located `${xpathFor_SearchFieldSymptomsConditions}` becomes VISIBLE
When I wait `PT30S` with `PT15S` polling until element located `${xpathFor_SymptomListOfCategory}` becomes VISIBLE
When I click on element located `${xpathFor_SymptomListOfCategory}`
When I wait `PT30S` with `PT15S` polling until element located `${xpathFor_SearchFieldSymptomsConditions}` becomes VISIBLE
When I wait `PT30S` with `PT15S` polling until element located `${xpathFor_Acne}` becomes VISIBLE
When I click on element located `${xpathFor_Acne}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_InPersonVisitInSubCategory}` becomes VISIBLE
When I click on element located `${xpathFor_InPersonVisitInSubCategory}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_SearchAvailability}` becomes VISIBLE
When I click on element located `${xpathFor_SearchAvailability}`
When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_ChooseATimeAndProvider}` becomes VISIBLE
When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/Appointment/open-appointments`
Then the response code is equal to '200'
When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_AvailableDayMonthDate}` becomes VISIBLE
When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_ProviderNameInChooseTime}` becomes VISIBLE
When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_InPersonVisit}` becomes VISIBLE
When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_ClinicNameInChooseTime}` becomes VISIBLE
When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_ClinicAddressInChooseTime}` becomes VISIBLE
When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_ViewMapInChooseTime}` becomes VISIBLE
When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_TimeSlotInChooseTime}` becomes VISIBLE
When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_NoMoreAppointmentsForThisDayTxtMsg}` becomes VISIBLE
When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_SearchNextAvailableDayButton}` becomes VISIBLE
When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_CalendarInChooseATimeAndProvider}` becomes VISIBLE
When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_CalendarFiltersInChooseATimeAndProvider}` becomes VISIBLE
When I click on element located `${xpathFor_ViewMapInChooseTime}`
When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_CloseMap}` becomes VISIBLE
When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_MapDisplay}` becomes VISIBLE
When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_DirectionsInMob}` becomes VISIBLE
When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_ClinicCoordinatesInMap}` becomes VISIBLE
When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_CloseIconInMap}` becomes VISIBLE
When I click on element located `${xpathFor_CloseIconInMap}`
When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_MapDisplay}` becomes NOT_VISIBLE
When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_ViewMapInChooseTime}` becomes VISIBLE
When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_SearchNextAvailableDayButton}` becomes VISIBLE
When I click on element located `${xpathFor_SearchNextAvailableDayButton}`
When I wait `PT30S` with `PT10S` polling until element located `${xpathFor_NextDayAvailable}` becomes VISIBLE
When I wait until element located `${xpathFor_NextDayAvailable}` contains text '#{generateDate(P1D, dd)}'
