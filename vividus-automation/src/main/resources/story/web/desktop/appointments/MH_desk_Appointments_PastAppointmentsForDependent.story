Description: As a user, I want to be able to see my past appointments to keep track of my  visit history.
Meta:

    @Epic MHPF-203 [MHPF-306]
    @group critical_path
    @layout desktop
    @appointments
    @Priority 2
    @issueId MHPF-306


Scenario: [Desktop][Appointments] Past appointments for dependent

Given I am on the main application page
When I wait until element located `${xpathFor_signInHeader}` contains text '${text_SignIn}'
When I enter `rdependent2` in field located `${userNameXpath}`
When I enter `${userPwd}` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_menuAppointments}` becomes VISIBLE
When I click on element located `${xpathFor_menuAppointments}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_cmdScheduleAppointment}` becomes VISIBLE
When I click on element located `${xpathFor_cmdScheduleAppointment}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ScheduleANewAppointment}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_PastButton}` becomes VISIBLE
When I click on element located `${xpathFor_PastButton}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ForDependent2React}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_TelephonicVisit}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ForChild2React}` becomes NOT_VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_VideoVisit}` becomes NOT_VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ForSpouse2React}` becomes NOT_VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_InPersonVisit}` becomes NOT_VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ForEmp2React}` becomes NOT_VISIBLE
