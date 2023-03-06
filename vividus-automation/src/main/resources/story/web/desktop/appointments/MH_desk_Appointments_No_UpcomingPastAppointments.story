Description: As a user, I want to be able to see my past appointments to keep track of my  visit history.
Meta:

    @Epic PT-170[MHPF-308]
    @group extended
    @layout desktop
    @appointments
    @Priority 3
    @issueId MHPF-308


Scenario: [Desktop][Appointments] Past appointments for employee

Given I am on the main application page
When I wait until element located `${xpathFor_signInHeader}` contains text '${text_SignIn}'
When I enter `remployee10` in field located `${userNameXpath}`
When I enter `${userPwd}` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ScheduleAnAppointmentButton}` becomes VISIBLE
When I click on element located `${xpathFor_ScheduleAnAppointmentButton}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_UpcomingTab}` becomes VISIBLE
When I click on element located `${xpathFor_UpcomingTab}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ThereAreNoUpcomingAppointments}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_PastButton}` becomes VISIBLE
When I click on element located `${xpathFor_PastButton}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ThereAreNoPastAppointments}` becomes VISIBLE
