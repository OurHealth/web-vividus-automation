Description: As a patient/user, I want to be able to see latest news to keep updated on recent changes and trends

Scenario: [Desktop][Latest News] Latest News Details

Meta:

    @Epic 170 - PT-187
    @group smoketest
    @layout desktop
    @articles
    @Priority 1
    @issueId PT-187

Given I am on the main application page
When I enter `remployee1` in field located `${userNameXpath}`
When I enter `Default1` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT60S` with `PT15S` polling until element located `${xpathFor_News}` becomes VISIBLE
When I click on element located `${xpathFor_newsForwardIcon}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_newsVirtualCareMarthHealth}` becomes VISIBLE
When I click on element located `${xpathFor_newsBackwardIcon}`
When I scroll element located `${xpathFor_buttonReadMore}` into view
When I click on element located `${xpathFor_buttonReadMore}`
When I wait until element located `${xpathFor_latestNews}` appears
Then the page with the URL containing '/latest_news' is loaded
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_imageWelcomeMarathon}` becomes VISIBLE
When I scroll element located `${xpathFor_welcomeToMarathonHealthInReadMore}` into view
When I wait `PT15S` with `PT05S` polling until element located `${xpathFor_welcomeToMarathonHealthInReadMore}` becomes VISIBLE
Then field located `${xpathFor_unforgettableExp}` exists
