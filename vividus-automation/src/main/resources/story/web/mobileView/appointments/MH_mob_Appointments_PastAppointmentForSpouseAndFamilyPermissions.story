Description: As a user, I want to be able to see my past appointments to keep track of my  visit history.
Meta:

    @Epic MHPF-203 [MHPF-312]
    @group critical_path
    @layout chrome_phone
    @appointments
    @Priority 2
    @issueId MHPF-312


Scenario: [Mobile][Appointments] Past appointments for Spouse and Family permissions



Given I am on the main application page
When I wait until element located `${xpathFor_signInHeader}` contains text 'Sign In'
When I enter `rspouse2` in field located `${userNameXpath}`
When I enter `${userPwd}` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ScheduleAnAppointmentButtonInMob}` becomes VISIBLE
When I click on element located `${xpathFor_ScheduleAnAppointmentButtonInMob}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ScheduleANewAppointment}` becomes VISIBLE
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/Appointment/appointments?showPast=true`
Then the response code is equal to '200'
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_PastButton}` becomes VISIBLE
When I click on element located `${xpathFor_PastButton}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ListOfAppointments}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ForSpouse2React}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ForDependent2React}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ForChild2React}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ForEmp2React}` becomes NOT_VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_InPersonVisit}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_TelephonicVisit}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_VideoVisit}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_profileButton}` becomes VISIBLE
When I click on element located `${xpathFor_profileButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SignOutButtonInProfileInMob}` becomes VISIBLE
When I click on element located `${xpathFor_SignOutButtonInProfileInMob}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_signInButton}` becomes VISIBLE
When I wait until element located `${xpathFor_signInHeader}` contains text 'Sign In'
When I enter `remployee2` in field located `${userNameXpath}`
When I enter `${userPwd}` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ScheduleAnAppointmentButtonInMob}` becomes VISIBLE
When I click on element located `${xpathFor_ScheduleAnAppointmentButtonInMob}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ScheduleANewAppointment}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_FamilyPermissionsFromLeftPane}` becomes VISIBLE
When I click on element located `${xpathFor_FamilyPermissionsFromLeftPane}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_FamilyPermissionsPopup}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_TextMessageInFamilyPermissions}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CloseButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdatePermissions}` becomes VISIBLE
When I click on element located `${xpathFor_CloseButton}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_FamilyPermissionsPopup}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ScheduleANewAppointment}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_FamilyPermissionsFromLeftPane}` becomes VISIBLE
When I click on element located `${xpathFor_FamilyPermissionsFromLeftPane}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdatePermissions}` becomes VISIBLE
When I click on element located `${xpathFor_UpdatePermissions}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_FamilyPermissionsPopup}` becomes NOT_VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_Spouse2ReactCheckBox}` becomes VISIBLE
When I click on element located `${xpathFor_Spouse2ReactCheckBox}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_UpdateButton}` becomes ENABLED
When I click on element located `${xpathFor_UpdateButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_profileButton}` becomes VISIBLE
When I click on element located `${xpathFor_profileButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SignOutButtonInProfileInMob}` becomes VISIBLE
When I click on element located `${xpathFor_SignOutButtonInProfileInMob}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_signInButton}` becomes VISIBLE
When I wait until element located `${xpathFor_signInHeader}` contains text 'Sign In'
When I enter `rspouse2` in field located `${userNameXpath}`
When I enter `${userPwd}` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ScheduleAnAppointmentButtonInMob}` becomes VISIBLE
When I click on element located `${xpathFor_ScheduleAnAppointmentButtonInMob}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ScheduleANewAppointment}` becomes VISIBLE
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/Appointment/appointments?showPast=true`
Then the response code is equal to '200'
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_PastButton}` becomes VISIBLE
When I click on element located `${xpathFor_PastButton}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ListOfAppointments}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ForEmp2React}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_profileButton}` becomes VISIBLE
When I click on element located `${xpathFor_profileButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SignOutButtonInProfileInMob}` becomes VISIBLE
When I click on element located `${xpathFor_SignOutButtonInProfileInMob}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_signInButton}` becomes VISIBLE
When I wait until element located `${xpathFor_signInHeader}` contains text 'Sign In'
When I enter `remployee2` in field located `${userNameXpath}`
When I enter `${userPwd}` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ScheduleAnAppointmentButtonInMob}` becomes VISIBLE
When I click on element located `${xpathFor_ScheduleAnAppointmentButtonInMob}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ScheduleANewAppointment}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_FamilyPermissionsFromLeftPane}` becomes VISIBLE
When I click on element located `${xpathFor_FamilyPermissionsFromLeftPane}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_FamilyPermissionsPopup}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_UpdatePermissions}` becomes VISIBLE
When I click on element located `${xpathFor_UpdatePermissions}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_FamilyPermissionsPopup}` becomes NOT_VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_Spouse2ReactCheckBox}` becomes VISIBLE
When I click on element located `${xpathFor_Spouse2ReactCheckBox}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_UpdateButton}` becomes ENABLED
When I click on element located `${xpathFor_UpdateButton}`
