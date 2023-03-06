Description: As a user, I want to be able to see dashboards visualizing key health indicators, so that I could track the status and dynamics of my health indicators and identify health tendencies

Meta:

    @Epic PT-170[PT-608]
    @group extended
    @layout chrome_phone
    @MyHealth
    @Priority 3

GivenStories: story/web/mobileView/logIn/MH_mob_HealthSummary_LogIn.story

Scenario: [Mobile][Health Summary: Dashboards] Empty View

!-- Given I am on the main application page
!-- When I wait until element located `${xpathFor_signInHeader}` contains text 'Sign In'
!-- When I enter `remployee9` in field located `${userNameXpath}`
!-- When I enter `Default1` in field located `${pwdXpath}`
!-- When I click on element located `${xpathFor_signInButton}`
!-- When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_profileButton}` becomes VISIBLE
!-- When I scroll context to TOP edge
!-- When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobHamburgerMenuIcon}` becomes VISIBLE
!-- When I click on element located `${xpathFor_mobHamburgerMenuIcon}`
!-- When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobMenuMyHealth}` becomes VISIBLE
!-- When I click on element located `${xpathFor_mobMenuMyHealth}`


When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobCMDMyHealthDashboard}` becomes VISIBLE
When I click on element located `${xpathFor_mobCMDMyHealthDashboard}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerMyHealthDashboard}` becomes VISIBLE
When I click on element located `${xpathFor_headerMyHealthDashboard}`


When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_weightInDashboard}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_waistSizeInDashboard}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_BloodGlucoseInDashboard}` becomes NOT_VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_profileButton}` becomes VISIBLE
When I click on element located `${xpathFor_profileButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_signOutButton}` becomes VISIBLE
When I click on element located `${xpathFor_signOutButton}`
When I wait until element located `${xpathFor_signInHeader}` contains text '${text_SignIn}'
When I enter `remployee8` in field located `${userNameXpath}`
When I enter `Default1` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_profileButton}` becomes VISIBLE
When I scroll context to TOP edge
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobHamburgerMenuIcon}` becomes VISIBLE
When I click on element located `${xpathFor_mobHamburgerMenuIcon}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobMenuMyHealth}` becomes VISIBLE
When I click on element located `${xpathFor_mobMenuMyHealth}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobCMDMyHealthDashboard}` becomes VISIBLE
When I click on element located `${xpathFor_mobCMDMyHealthDashboard}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerMyHealthDashboard}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_noInformationAvailableMsg}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_showGraphs}` becomes NOT_VISIBLE
