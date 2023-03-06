Description: As a user, I want to be able to select the appointment visit reason and type to provide efficient and sufficient info for my provider in advance and choose the appropriate communication type

Meta:

    @Epic PT-170[PT-1376]
    @group extended
    @layout desktop
    @appointments
    @Priority 3
    @issueId PT-1376


Scenario: [Desktop][Appointments] Selecting visit reason: Chiropractic care and Massage

Given I am on the main application page
When I wait until element located `${xpathFor_signInHeader}` contains text '${text_SignIn}'
When I enter `remployee2` in field located `${userNameXpath}`
When I enter `${userPwd}` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ScheduleAnAppointmentButton}` becomes VISIBLE
When I click on element located `${xpathFor_ScheduleAnAppointmentButton}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ScheduleANewAppointment}` becomes VISIBLE
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
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_SearchFieldSymptomsConditions}` becomes VISIBLE
When I enter `Chiropractic Care` in field located `${xpathFor_SearchFieldSymptomsConditions}`
When I click on element located `${xpathFor_ChiropracticCare}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_ChiropracticCare}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_ChiropracticCarePopup}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_ChiropracticCareFollow-up}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_ChiropracticCareInitial}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_SubmitButton}` becomes DISABLED
When I click on element located `${xpathFor_ChiropracticCareInitial}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_SubmitButton}` becomes ENABLED
When I click on element located `${xpathFor_SubmitButton}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_InPersonVisitInSubCategory}` becomes VISIBLE
When I click on element located `${xpathFor_InPersonVisitInSubCategory}`
When I change context to element located `${xpathFor_ChiropracticCare(Initial)SelectedInDropDown}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_ChiropracticCare(Initial)SelectedInDropDown}` becomes VISIBLE
When I wait `PT120S` with `PT20S` polling until element located `${xpathFor_ChiropracticCare(Initial)SelectedInDropDown}` becomes VISIBLE
When I wait `PT120S` with `PT20S` polling until element located `${xpathFor_ChiropracticCare(Initial)SelectedInDropDown}` becomes ENABLED
When I click on element located `${xpathFor_ChiropracticCare(Initial)SelectedInDropDown}`
When I click on element located `${xpathFor_ChiropracticCare(Initial)SelectedInDropDown}`
When I reset context
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_ChiropracticCarePopup}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_CrossIconInChiropracticCarePopup}` becomes VISIBLE
When I click on element located `${xpathFor_CrossIconInChiropracticCarePopup}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_SearchFieldSymptomsConditions}` becomes VISIBLE
When I enter `Massage Therapy` in field located `${xpathFor_SearchFieldSymptomsConditions}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_MassageTherapy}` becomes VISIBLE
When I click on element located `${xpathFor_MassageTherapy}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_MassageTherapyPopup}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_Massage30minTherapyInPopup}` becomes VISIBLE
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_SubmitButton}` becomes DISABLED
When I click on element located `${xpathFor_Massage30minTherapyInPopup}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_SubmitButton}` becomes ENABLED
When I click on element located `${xpathFor_SubmitButton}`
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_Massage30minTherapySelected}` becomes VISIBLE
