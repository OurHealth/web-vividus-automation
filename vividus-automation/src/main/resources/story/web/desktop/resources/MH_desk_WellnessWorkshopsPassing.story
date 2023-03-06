Description: As a user, I want to be able to have access to other external resources that may be helpful or provide valuable knowledge to my daily healthcare

Meta:

    @Epic PT-645[PT-969]
    @group smoketest
    @layout desktop
    @resources
    @Priority 1
    @issueId PT-969

GivenStories: story/web/desktop/logIn/MH_Login.story

Scenario: [Desktop][Resources] Wellness workshops passing

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_homeButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ResourcesMenu}` becomes VISIBLE
When I click on element located `${xpathFor_ResourcesMenu}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_WellnessWorkshopsUnderMenu}` becomes VISIBLE
When I click on element located `${xpathFor_WellnessWorkshopsUnderMenu}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_WellnessWorkshops}` becomes VISIBLE

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_InProgressIncentivizedWorkshops}` becomes VISIBLE
When I click on element located `${xpathFor_InProgressIncentivizedWorkshops}`
When I click on element located `${xpathFor_AllAvailableWorkshopsWorkshops}`



When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_FLUWorkshop}` becomes VISIBLE
When I click on element located `${xpathFor_FLUWorkshop}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_FLUHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_StartButtonIninfluenzaSeasonalFlu}` becomes VISIBLE
When I click on element located `${xpathFor_StartButtonIninfluenzaSeasonalFlu}`
When I switch to a new window
Then the page title contains 'Influenza (Seasonal Flu)'
When I close the current window
When I switch to window with title that contains `Wellness Workshops - Marathon Health`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_FLUHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_StartButtonIninfluenzaSeasonalFlu}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CompletedIninfluenzaSeasonalFlu}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_StartButtonInFluComplications}` becomes VISIBLE
When I click on element located `${xpathFor_StartButtonInFluComplications}`
When I switch to a new window
Then the page title contains 'Flu Complications'
When I close the current window
When I switch to window with title that contains `Wellness Workshops - Marathon Health`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_FLUHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_StartButtonInFluComplications}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CompletedInFluComplications}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_StartButtonInVaccinesToPreventTheFlu}` becomes VISIBLE
When I click on element located `${xpathFor_StartButtonInVaccinesToPreventTheFlu}`
When I switch to a new window
Then the page title contains 'Vaccines to Prevent the Flu'
When I close the current window
When I switch to window with title that contains `Wellness Workshops - Marathon Health`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_FLUHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_StartButtonInVaccinesToPreventTheFlu}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CompletedInVaccinesToPreventTheFlu}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_StartButtonInFluVaccines}` becomes VISIBLE
When I click on element located `${xpathFor_StartButtonInFluVaccines}`
When I switch to a new window
Then the page title contains 'Flu Vaccines: Should I Get a Flu Vaccine?'
When I close the current window
When I switch to window with title that contains `Wellness Workshops - Marathon Health`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_FLUHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_StartButtonInFluVaccines}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CompletedInFluVaccines}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_StartButtonInBenefitsFluShotsVideo}` becomes VISIBLE
When I click on element located `${xpathFor_StartButtonInBenefitsFluShotsVideo}`
When I switch to a new window
Then the page title contains 'What Difference Could the Flu Vaccine Make?'
When I close the current window
When I switch to window with title that contains `Wellness Workshops - Marathon Health`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_FLUHeader}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_StartButtonInBenefitsFluShotsVideo}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CompletedInBenefitsFluShotsVideo}` becomes VISIBLE

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ResetLink}` becomes VISIBLE
When I click on element located `${xpathFor_ResetLink}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CompletedInFluComplications}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CompletedInFluVaccines}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CompletedInBenefitsFluShotsVideo}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_NoProgress}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_StartButtonIninfluenzaSeasonalFlu}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_StartButtonInFluComplications}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_StartButtonInVaccinesToPreventTheFlu}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_StartButtonInFluVaccines}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_StartButtonInBenefitsFluShotsVideo}` becomes VISIBLE
