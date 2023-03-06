Description:As a patient/user, I want to be able to see webinars to gain additional knowledge about health and healthcare

Meta:

    @Epic PT-170[Jira-221]
    @group critical_path
    @layout desktop
    @articles
    @Priority 2
    @issueId PT-221

GivenStories: story/web/desktop/logIn/MH_Login.story

Scenario: [Desktop][Articles] Webinar Library

When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_quickLinks}` becomes VISIBLE
When I click on element located `${xpathFor_deskWebinars}`

When I execute HTTP GET request for resource with URL `https://my.beta.marathon-health.com/get-article-categories`
Then the response code is equal to '200'
Then JSON element from `
{
   "name": "Webinar Library"
}
` by JSON path `$.name` is equal to `Webinar Library`
When I wait until element located `${xpathFor_deskWebinarLibrary}` appears
When I wait until element located `${xpathFor_mobBreadcrumbHome}` appears
When I wait until element located `${xpathFor_breadcrumbWebinarLib}` appears
When I wait until an element with the tag 'img' and attribute 'alt'='Webinar Library' appears
When I wait until element located `${xpathFor_headingWebinarLibrary}` appears
When I wait until element located `${xpathFor_heading2020Webinar}` appears
When I wait until an element with the tag 'a' and attribute 'href'='${href_2020Webinar}' appears
When I wait until element located `${xpathFor_linkQ3Nutrition}` appears
When I click on element located `${xpathFor_linkQ3Nutrition}`
When I switch to window with title that contains `Webinar Library - Marathon Health`
