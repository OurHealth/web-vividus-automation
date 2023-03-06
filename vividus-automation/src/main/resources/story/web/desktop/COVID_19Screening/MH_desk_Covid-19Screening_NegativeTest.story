Description: As a user, I want to complete a Covid-19 screening to know if I have Covid-19 symptoms and to be cleared (or not cleared) for work or other activity


Meta:

    @Epic PT-645[PT-793]
    @group critical_path
    @layout desktop
    @MyHealth
    @Priority 2
    @issueId PT-793

GivenStories: story/web/desktop/logIn/MH_Login.story

Scenario: [Desktop][Covid-19 Screening] Negative test

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_userProfileButton}` becomes VISIBLE
When I click on element located `${xpathFor_userProfileButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_COVID-19ScreeningInUserProfile}` becomes VISIBLE
When I click on element located `${xpathFor_COVID-19ScreeningInUserProfile}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerCOVID-19ScreenInMainPage}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_question1CoughingWithNoButton}` becomes VISIBLE
When I click on element located `${xpathFor_question1CoughingWithNoButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_question2ShortnessOfBreathWithNoButton}` becomes VISIBLE
When I click on element located `${xpathFor_question2ShortnessOfBreathWithNoButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_question3FeverExceeding100.4within24hoursWithNoButton}` becomes VISIBLE
When I click on element located `${xpathFor_question3FeverExceeding100.4within24hoursWithNoButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_question4ChillsOrRepeatedShakingWithChillsWithNoButton}` becomes VISIBLE
When I click on element located `${xpathFor_question4ChillsOrRepeatedShakingWithChillsWithNoButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_question5MusclePainWithNoButton}` becomes VISIBLE
When I click on element located `${xpathFor_question5MusclePainWithNoButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_question6SoreThroatWithNoButton}` becomes VISIBLE
When I click on element located `${xpathFor_question6SoreThroatWithNoButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_question7NewLossOfTasteOrSmellWithNoButton}` becomes VISIBLE
When I click on element located `${xpathFor_question7NewLossOfTasteOrSmellWithNoButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_question8SuspectedCOVID-19WithNoButton}` becomes VISIBLE
When I click on element located `${xpathFor_question8SuspectedCOVID-19WithNoButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_questionDoYouConsentToMarathonHealthSharing..?NoIdoNOTconsent}` becomes VISIBLE
When I click on element located `${xpathFor_questionDoYouConsentToMarathonHealthSharing..?NoIdoNOTconsent}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SubmitScreeningButtonEnabledButton}` becomes VISIBLE
When I click on element located `${xpathFor_SubmitScreeningButtonEnabledButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_COVID-19ScreeningResults}` becomes VISIBLE
When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/Screening/save-covid19-screening`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ThankYouForCovid-19SelfAssesmentWithDateAndTimeOfTheResult}` becomes VISIBLE
Then the text '#{generateDate(P, MM/dd/yyyy)}' exists
Then the text 'CLEARED' exists
When I wait `PT10S` with `PT05S` polling until element located `By.linkText(My Screenings.)` becomes VISIBLE
Then the text 'PLEASE DO NOT REPORT TO WORK' does not exist
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_EmailWithPrefilledValue}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `By.buttonName(Send Email)` becomes VISIBLE
When I click on element located `By.buttonName(Send Email)`
When I wait `PT10S` with `PT05S` polling until element located `By.buttonName(Email Sent)` becomes VISIBLE
When I execute HTTP POST request for resource with URL `https://my.beta.marathon-health.com/Screening/email-latest-covid19-screening`
Then the response code is equal to '200'
When I wait `PT10S` with `PT05S` polling until element located `By.linkText(My Screenings.)` becomes VISIBLE
When I click on element located `By.linkText(My Screenings.)`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerScreenings}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_listOfScreeningsInDesktopView}` becomes VISIBLE
