Description: As a user, I want to be able to see my past appointments to keep track of my  visit history.
Meta:

    @Epic PT-170[MHPF-310]
    @group extended
    @layout chrome_phone
    @appointments
    @Priority 3
    @issueId MHPF-310


Scenario: [Mobile][Appointments] No upcoming/past appointments

Given I am on the main application page
When I wait until element located `${xpathFor_signInHeader}` contains text '${text_SignIn}'
When I enter `remployee10` in field located `${userNameXpath}`
When I enter `${userPwd}` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ScheduleAnAppointmentButtonInMob}` becomes VISIBLE
When I click on element located `${xpathFor_ScheduleAnAppointmentButtonInMob}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_UpcomingTab}` becomes VISIBLE
When I click on element located `${xpathFor_UpcomingTab}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ThereAreNoUpcomingAppointments}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_PastButton}` becomes VISIBLE
When I click on element located `${xpathFor_PastButton}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ThereAreNoPastAppointments}` becomes VISIBLE
