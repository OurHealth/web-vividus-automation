Description: As a user, I want to complete a Covid-19 screening to know if I have Covid-19 symptoms and to be cleared (or not cleared) for work or other activity


Meta:

    @Epic PT-645[PT-792]
    @group critical_path
    @layout desktop
    @MyHealth
    @Priority 2
    @issueId PT-792

GivenStories: story/web/desktop/logIn/MH_Login.story

Scenario: [Desktop][Covid-19 Screening] Positive test

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_userProfileButton}` becomes VISIBLE
When I click on element located `${xpathFor_userProfileButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_COVID-19ScreeningInUserProfile}` becomes VISIBLE
When I click on element located `${xpathFor_COVID-19ScreeningInUserProfile}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerCOVID-19ScreenInMainPage}` becomes VISIBLE

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_question1CoughingWithYesButton}` becomes VISIBLE
When I click on element located `${xpathFor_question1CoughingWithYesButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_question2ShortnessOfBreathWithYesButton}` becomes VISIBLE
When I click on element located `${xpathFor_question2ShortnessOfBreathWithYesButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_question3FeverExceeding100.4within24hoursWithYesButton}` becomes VISIBLE
When I click on element located `${xpathFor_question3FeverExceeding100.4within24hoursWithYesButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_question4ChillsOrRepeatedShakingWithChillsWithYesButton}` becomes VISIBLE
When I click on element located `${xpathFor_question4ChillsOrRepeatedShakingWithChillsWithYesButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_question5MusclePainWithYesButton}` becomes VISIBLE
When I click on element located `${xpathFor_question5MusclePainWithYesButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_question6SoreThroatWithYesButton}` becomes VISIBLE
When I click on element located `${xpathFor_question6SoreThroatWithYesButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_question7NewLossOfTasteOrSmellWithYesButton}` becomes VISIBLE
When I click on element located `${xpathFor_question7NewLossOfTasteOrSmellWithYesButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_question8SuspectedCOVID-19WithYesButton}` becomes VISIBLE
When I click on element located `${xpathFor_question8SuspectedCOVID-19WithYesButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_questionDoYouConsentToMarathonHealthSharing..?YesIconsent}` becomes VISIBLE
When I click on element located `${xpathFor_questionDoYouConsentToMarathonHealthSharing..?YesIconsent}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SubmitScreeningButtonEnabledButton}` becomes VISIBLE
When I click on element located `${xpathFor_SubmitScreeningButtonEnabledButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_COVID-19ScreeningResults}` becomes VISIBLE
When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/Screening/save-covid19-screening`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ThankYouForCovid-19SelfAssesmentWithDateAndTimeOfTheResult}` becomes VISIBLE
Then the text '#{generateDate(P, MM/dd/yyyy)}' exists
Then the text 'NOT CLEARED' exists
When I wait `PT10S` with `PT05S` polling until element located `By.linkText(My Screenings.)` becomes VISIBLE
Then the text 'PLEASE DO NOT REPORT TO WORK' exists
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_EmailWithPrefilledValue}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `By.buttonName(Send Email)` becomes VISIBLE
When I click on element located `By.buttonName(Send Email)`
When I wait `PT10S` with `PT05S` polling until element located `By.buttonName(Email Sent)` becomes VISIBLE
When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/Screening/email-latest-covid19-screening`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `By.linkText(My Screenings.)` becomes VISIBLE
When I click on element located `By.linkText(My Screenings.)`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerScreenings}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerScreenings}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_listOfScreeningsInDesktopView}` becomes VISIBLE
