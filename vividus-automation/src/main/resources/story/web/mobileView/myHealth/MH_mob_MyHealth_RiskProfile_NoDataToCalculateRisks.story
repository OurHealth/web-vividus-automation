Description: As a user, I want to be able to see the information on my screenings to know screening results and keep track of my screenings

Meta:

    @Epic PT-645[PT-617]
    @group extended
    @layout chrome_phone
    @MyHealth
    @Priority 3

GivenStories: story/web/mobileView/myHealth/MH_mob_MyHealth_LogIn3.story

Scenario: [Mobile][My Health:Risk Profile] No data to calculate risks

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectRiskProfileFromHealthSummaryInDesk}` becomes VISIBLE
When I click on element located `${xpathFor_selectRiskProfileFromHealthSummaryInDesk}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headeryMyHealthRiskProfile}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_NumberofHighRisksSection}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_NumberofHighRisksZero}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_A1CSectionUnknownRisk}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_A1CCorrespondingValue}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BloodPressureUnknownRisk}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BloodPressureCorrespondingSystolicValue}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_GlucoseSectionUnknownRisk}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_GlucoseCorrespondingValue}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CholesterolsSectionUnknownRisk}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CholesterolsCorrespondingTotalCholesterolValue}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BodyMassIndexSectionUnknownRisk}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BodyMassIndexCorrespondingValue}` becomes NOT_VISIBLE
