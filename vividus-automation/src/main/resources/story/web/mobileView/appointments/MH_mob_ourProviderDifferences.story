Description: As a patient/user, I want to see information on care providers to be more aware of provided level of expertise and difference from other providers

Meta:

@Epic PT-170[Jira-PT-223]
    @group critical_path
    @layout chrome_phone
    @articles
    @Priority 2
    @issueId PT-223

Scenario: [Mobile][Articles] Our Provider Difference

Given I am on the main application page
When I wait until element located `${xpathFor_signInHeader}` contains text 'Sign In'
When I enter `${userName}` in field located `${userNameXpath}`
When I enter `${userPwd}` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I scroll context to TOP edge

When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/get-article-categories`
Then the response code is equal to '200'
Then JSON element from `
{
   "name": "Providers"
}
` by JSON path `$.name` is equal to `Providers`

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_mobHamburgerMenuIcon}` becomes VISIBLE
When I click on element located `${xpathFor_mobHamburgerMenuIcon}`
When I click on element located `${xpathFor_mobMenuAppointments}`
When I click on element located `${xpathFor_Appoinments_ourProviders}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerInHomePage_ourProviders}` becomes VISIBLE
When I wait `PT10S` with `PT05S` polling until element located `By.linkText(Home)` becomes VISIBLE
When I wait until element located `${xpathFor_breadcrumbProviders}` appears
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_ourProviderDifference}` becomes VISIBLE
When I wait until an element with the tag 'img' and attribute 'alt'='${textOurProviderDiff}' appears
Then the text '${textInOurProviderDiffParagraph}' exists
When I click on element located `By.linkText(Home)`
When I wait until an element with the tag 'img' and attribute 'alt'='${textwelcomeToMarathon}' appears
When I change context to element located `${xpathFor_quickLinks}` in scope of current context
When I click on element located `${xpathFor_providersInQuickLinks}`
When I reset context
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_headerInHomePage_ourProviders}` becomes VISIBLE

Examples:
|empName	|empPwd		|text				|
|remployee1	|Default1	|Employee1 React	|
