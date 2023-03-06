Description: As a user, I want to be able to see dashboards visualizing key health indicators, so that I could track the status and dynamics of my health indicators and identify health tendencies.


Meta:

    @Epic PT-170[PT-610]
    @group critical_path
    @layout desktop
    @MyHealth
    @Priority 2

GivenStories: story/web/desktop/myHealth/MH_desk_MyHealth_LogIn_preReq.story

Scenario: [Desktop][Health Summary: Dashboards] Empty View

Examples:
|userName  | pwd     | commandInMyHealthMenu         |
|remployee9| Default1| xpathFor_cmdMyHealthDashboard |
