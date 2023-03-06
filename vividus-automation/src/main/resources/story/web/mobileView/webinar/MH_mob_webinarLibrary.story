Description:As a patient/user, I want to be able to see webinars to gain additional knowledge about health and healthcare

Meta:

    @Epic PT-170[Jira-183]
    @group critical_path
    @layout chrome_phone
    @articles
    @Priority 1


Scenario: Scenario: [Mobile][Articles] Webinar Library

Given I am on the main application page
When I wait until element located `${xpathFor_signInHeader}` contains text 'Sign In'
When I enter `${userName}` in field located `${userNameXpath}`
When I enter `${userPwd}` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I scroll context to TOP edge
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobHamburgerMenuIcon}` becomes VISIBLE
When I click on element located `${xpathFor_mobHamburgerMenuIcon}`
When I click on element located `${xpathFor_mobMenuResources}`
When I click on element located `${xpathFor_mobWebinars}`
When I wait until element located `${xpathFor_webinarLibrary}` appears
When I wait until element located `${xpathFor_webinarLibraryInBreadcrumb}` appears
When I wait until an element with the tag 'img' and attribute 'alt'='${text_webinarLibrary}' appears
When I wait until element located `${xpathFor_headingWebinarLibrary}` appears
When I wait until element located `${xpathFor_heading2020Webinar}` appears
When I wait until an element with the tag 'a' and attribute 'href'='https://event.on24.com/wcc/r/2961836/09A85A43DDBEE4C6869004BDE384BF9F/1844487' appears
When I wait until element located `${xpathFor_linkQ3Nutrition}` appears
When I click on element located `${xpathFor_linkQ3Nutrition}`
When I switch to window with title that contains `${text_pandemicPantrySession4}`

Examples:
|empName	|empPwd		|text				|
|remployee1	|Default1	|Employee1 React	|
