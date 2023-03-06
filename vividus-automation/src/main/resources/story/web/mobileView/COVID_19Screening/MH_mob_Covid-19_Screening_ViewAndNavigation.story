Description: As a user, I want to complete a Covid-19 screening to know if I have Covid-19 symptoms and to be cleared (or not cleared) for work or other activity


Meta:

    @Epic PT-645[PT-791]
    @group critical_path
    @layout chrome_phone
    @MyHealth
    @Priority 2


Scenario: [Mobile][Covid-19 Screening] View and Navigation

Given I am on the main application page
When I wait until element located `${xpathFor_signInHeader}` contains text '${text_SignIn}'
When I enter `remployee9` in field located `${userNameXpath}`
When I enter `Default1` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I scroll context to TOP edge
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_profileButton}` becomes VISIBLE
When I click on element located `${xpathFor_profileButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_COVID-19ScreeningInUserProfileInMob}` becomes VISIBLE
When I click on element located `${xpathFor_COVID-19ScreeningInUserProfileInMob}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerCOVID-19ScreenInMainPage}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_question1Coughing}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_question1CoughingWithYesButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_question1CoughingWithNoButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_question2ShortnessOfBreathOrDifficultyBreathing}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_question2ShortnessOfBreathWithYesButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_question2ShortnessOfBreathWithNoButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_question3FeverExceeding100.4within24hours}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_question3FeverExceeding100.4within24hoursWithYesButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_question3FeverExceeding100.4within24hoursWithNoButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_question4ChillsOrRepeatedShakingWithChills}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_question4ChillsOrRepeatedShakingWithChillsWithYesButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_question4ChillsOrRepeatedShakingWithChillsWithNoButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_question5MusclePain}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_question5MusclePainWithYesButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_question5MusclePainWithNoButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_question6SoreThroat}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_question6SoreThroatWithYesButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_question6SoreThroatWithNoButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_question7NewLossOfTasteOrSmell}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_question7NewLossOfTasteOrSmellWithYesButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_question7NewLossOfTasteOrSmellWithNoButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_question8SuspectedCOVID-19}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_question8SuspectedCOVID-19WithYesButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_question8SuspectedCOVID-19WithNoButton}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_questionDoYouConsentToMarathonHealthSharing..?}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_questionDoYouConsentToMarathonHealthSharing..?YesIconsent}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_questionDoYouConsentToMarathonHealthSharing..?NoIdoNOTconsent}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SubmitScreeningButtonDisabled}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SubmitScreeningButtonDisabled}` becomes VISIBLE
When I click on element located `${xpathFor_SubmitScreeningButtonDisabled}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerCOVID-19ScreenInMainPage}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SubmitScreeningButtonDisabled}` becomes DISABLED
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_question1CoughingWithYesButton}` becomes VISIBLE
When I click on element located `${xpathFor_question1CoughingWithYesButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_question2ShortnessOfBreathWithNoButton}` becomes VISIBLE
When I click on element located `${xpathFor_question2ShortnessOfBreathWithNoButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_question3FeverExceeding100.4within24hoursWithYesButton}` becomes VISIBLE
When I click on element located `${xpathFor_question3FeverExceeding100.4within24hoursWithYesButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_question4ChillsOrRepeatedShakingWithChillsWithNoButton}` becomes VISIBLE
When I click on element located `${xpathFor_question4ChillsOrRepeatedShakingWithChillsWithNoButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_question5MusclePainWithYesButton}` becomes VISIBLE
When I click on element located `${xpathFor_question5MusclePainWithYesButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_question6SoreThroatWithYesButton}` becomes VISIBLE
When I click on element located `${xpathFor_question6SoreThroatWithYesButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_question7NewLossOfTasteOrSmellWithYesButton}` becomes VISIBLE
When I click on element located `${xpathFor_question7NewLossOfTasteOrSmellWithYesButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_question8SuspectedCOVID-19WithYesButton}` becomes VISIBLE
When I click on element located `${xpathFor_question8SuspectedCOVID-19WithYesButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SubmitScreeningButtonDisabled}` becomes VISIBLE
When I click on element located `${xpathFor_SubmitScreeningButtonDisabled}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerCOVID-19ScreenInMainPage}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_SubmitScreeningButtonDisabled}` becomes DISABLED
