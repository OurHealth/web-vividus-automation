Description: As a patient/user, I want to be able to see latest news to keep updated on recent changes and trends

Scenario: [Desktop][Latest News] Latest News carousel

Meta:

    @Epic PT-170[Jira-183]
    @group smoketest
    @layout desktop
    @articles
    @Priority 1
    @issueId PT-183

Given I am on the main application page
When I enter `${userName}` in field located `${userNameXpath}`
When I enter `${userPwd}` in field located `${pwdXpath}`
When I click on element located `${xpathFor_signInButton}`
When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_News}` becomes VISIBLE
Then field located `${xpathFor_News}` exists
When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/get-article-categories`
Then the response code is equal to '200'
Then JSON element from `
{
   "name": "Latest News"
}
` by JSON path `$.name` is equal to `Latest News`
