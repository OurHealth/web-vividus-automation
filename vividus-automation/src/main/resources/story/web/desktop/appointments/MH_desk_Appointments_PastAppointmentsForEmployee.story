Description: As a user, I want to be able to see my past appointments to keep track of my  visit history.
Meta:

    @Epic MHPF-203 [MHPF-304]
    @group critical_path
    @layout desktop
    @appointments
    @Priority 2
    @issueId MHPF-304


Scenario: [Desktop][Appointments] Past appointments for employee

Given I am on the main application page
When I wait until element located `${xpathFor_signInHeader}` contains text '${text_SignIn}'
When I enter `remployee2` in field located `${userNameXpath}`
When I enter `${userPwd}` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_menuAppointments}` becomes VISIBLE
When I click on element located `${xpathFor_menuAppointments}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_cmdScheduleAppointment}` becomes VISIBLE
When I click on element located `${xpathFor_cmdScheduleAppointment}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ScheduleANewAppointment}` becomes VISIBLE
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ScheduledAppointments}` becomes VISIBLE
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/Appointment/appointments?showPast=true`
Then the response code is equal to '200'
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_PastButton}` becomes VISIBLE
When I click on element located `${xpathFor_PastButton}`
When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ListOfAppointments}` becomes VISIBLE
When I save number of elements located `${xpathFor_ForEmp2React}` to SCENARIO variable `numberOfOuterElements`
When the condition `#{eval(${numberOfOuterElements} == 1)}` is true I do
|step                                                                   |
| When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_DayAndDateOfAppointmentOfEmp}` becomes VISIBLE |
| When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_StartAndEndTimeOfAppointmentOfEmp}` becomes VISIBLE |
| When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_WithProviderNameInPastTab}` becomes VISIBLE |
| When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ForEmployee2ReactLabel}` becomes VISIBLE |
| When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_TelephonicVisit}` becomes VISIBLE |
| When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_VisitReasonInPast}` becomes VISIBLE |
| When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_CancelLink}` becomes NOT_VISIBLE |
| When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_RecheduleLink}` becomes NOT_VISIBLE |
| When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_AddToCalendar}` becomes NOT_VISIBLE |

When I save number of elements located `${xpathFor_ForDependent2React}` to SCENARIO variable `numberOfOuterElements`
When the condition `#{eval(${numberOfOuterElements} == 1)}` is true I do
|step                                                                   |
| When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_DayAndDateOfAppointment}` becomes VISIBLE |
| When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_StartAndEndTimeOfAppointment}` becomes VISIBLE |
| When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_WithProviderNameInPastTab}` becomes VISIBLE |
| When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ForDependent2React}` becomes VISIBLE |
| When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_TelephonicVisit}` becomes VISIBLE |
| When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_VisitReasonInPast}` becomes VISIBLE |
| When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_CancelLink}` becomes NOT_VISIBLE |
| When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_RecheduleLink}` becomes NOT_VISIBLE |
| When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_AddToCalendar}` becomes NOT_VISIBLE |

When I save number of elements located `${xpathFor_ForChild2React}` to SCENARIO variable `numberOfOuterElements`
When the condition `#{eval(${numberOfOuterElements} == 1)}` is true I do
|step                                                                   |
| When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ForChild2React}` becomes VISIBLE  |
| When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_DayAndDateOfAppointment}` becomes VISIBLE |
| When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_StartAndEndTimeOfAppointmentOfEmp}` becomes VISIBLE |
| When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_WithProviderNameInPastTab}` becomes VISIBLE |
| When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ForChild2React}` becomes VISIBLE |
| When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_VideoVisit}` becomes VISIBLE |
| When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_VisitReasonInPast}` becomes VISIBLE |
| When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_CancelLink}` becomes NOT_VISIBLE |
| When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_RecheduleLink}` becomes NOT_VISIBLE |
| When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_AddToCalendar}` becomes NOT_VISIBLE |

When I save number of elements located `${xpathFor_ForSpouse2React}` to SCENARIO variable `numberOfOuterElements`
When the condition `#{eval(${numberOfOuterElements} == 1)}` is true I do
|step                                                                   |
| When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_DayAndDateOfAppointment}` becomes VISIBLE |
| When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ForSpouse2React}` becomes VISIBLE  |
| When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_DayAndDateOfAppointmentOfEmp}` becomes VISIBLE |
| When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_StartAndEndTimeOfAppointmentOfEmp}` becomes VISIBLE |
| When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_WithProviderNameInPastTab}` becomes VISIBLE |
| When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_ForSpouse2React}` becomes VISIBLE |
| When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_TelephonicVisit}` becomes VISIBLE |
| When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_VisitReasonInPast}` becomes VISIBLE |
| When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_CancelLink}` becomes NOT_VISIBLE |
| When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_RecheduleLink}` becomes NOT_VISIBLE |
| When I wait `PT20S` with `PT05S` polling until element located `${xpathFor_AddToCalendar}` becomes NOT_VISIBLE |
