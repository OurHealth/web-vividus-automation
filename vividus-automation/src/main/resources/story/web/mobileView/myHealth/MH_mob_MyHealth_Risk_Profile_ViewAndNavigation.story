Description: As a user, I want to be able to see the information on my screenings to know screening results and keep track of my screenings

Meta:

    @Epic PT-645[PT-617]
    @group critical_path
    @layout chrome_phone
    @MyHealth
    @Priority 2

GivenStories: story/web/mobileView/myHealth/MH_mob_MyHealth_LogIn3.story

Scenario: [Mobile][MyHealth: Risk Profile] View and Navigation

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_selectRiskProfileFromHealthSummaryInDesk}` becomes VISIBLE
When I click on element located `${xpathFor_selectRiskProfileFromHealthSummaryInDesk}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headeryMyHealthRiskProfile}` becomes VISIBLE
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/wellness/WellnessLog/risk-profile`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_NumberofHighRisksSection}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_NumberofHighRisks}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Whatdoesthismean}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Iicon}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_labelViewingFor}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ViewingForDate}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HealthReportSection}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DownloadMyHealthReportinEnglishPDF}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_DownloadMyHealthReportinEnglishHTML}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_Iicon}` becomes VISIBLE
When I click on element located `${xpathFor_Iicon}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_HighRiskInformationPopup}` becomes VISIBLE
When I accept alert with message which contains `High Risk Information`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobAlertClose}` becomes VISIBLE
When I click on element located `${xpathFor_mobAlertClose}`
When I wait until an alert disappears
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_A1CSectionHighRisk}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_A1CCorrespondingValue}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BloodPressureHighRisk}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BloodPressureCorrespondingSystolicValue}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BloodPressureCorrespondingDiastolicValue}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_GlucoseSectionHighRisk}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_GlucoseCorrespondingValue}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CholesterolsSectionHighRisk}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CholesterolsCorrespondingTotalCholesterolValue}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CholesterolsCorrespondingLDLCholesterolValue}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CholesterolsCorrespondingHDLCholesterolValue}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BodyMassIndexSectionHighRisk}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BodyMassIndexCorrespondingValue}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ViewingForDate}` becomes VISIBLE
When I clear field located `${xpathFor_ViewingForDate}` using keyboard
When I enter `06/22/2022` in field located `${xpathFor_ViewingForDate}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_NumberofHighRisksZero}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_A1CSectionNoRisk}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_A1CCorrespondingValue1}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BloodPressureNoRisk}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BloodPressureCorrespondingSystolicValue1}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BloodPressureCorrespondingDiastolicValue1}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_GlucoseSectionNoRisk}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_GlucoseCorrespondingValue1}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CholesterolsSectionNoRisk}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CholesterolsCorrespondingTotalCholesterolValue1}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CholesterolsCorrespondingLDLCholesterolValue1}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CholesterolsCorrespondingHDLCholesterolValue1}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BodyMassIndexSectionNoRisk}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BodyMassIndexCorrespondingValue1}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ViewingForDate}` becomes VISIBLE
When I clear field located `${xpathFor_ViewingForDate}` using keyboard
When I enter `06/15/2022` in field located `${xpathFor_ViewingForDate}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_NumberofHighRisksTwo}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_A1CSectionHighRisk}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_A1CCorrespondingValue2}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BloodPressureMODERATERISK}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BloodPressureCorrespondingSystolicValue2}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BloodPressureCorrespondingDiastolicValue2}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_GlucoseSectionMODERATERISK}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_GlucoseCorrespondingValue2}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CholesterolsSectionHighRisk}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CholesterolsCorrespondingTotalCholesterolValue2}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CholesterolsCorrespondingLDLCholesterolValue2}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_CholesterolsCorrespondingHDLCholesterolValue2}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BodyMassIndexSectionNoRisk}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BodyMassIndexCorrespondingValue2}` becomes VISIBLE
