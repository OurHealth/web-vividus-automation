# VIVIDUS Starter

The purpose of this repository is to help users start creating automated tests using VIVIDUS and run the scripts after clone the project.

Pre-requiste installers:
  * [Install and configure Git](#install-and-configure-git)
  * [Install Java](#install-java)
1. Clone the project from the github.
2. If you want to run the script/story in desktop mode please do the below settings:
    
    CONFIGURATION.PROPERTIES:
    =========================
    a) In configuration.properties check the below setting is enbaled or not.
        > configuration.profiles=web/desktop/chrome
    b) Mobile view property key should be commented.
        #configuration.profiles=web/desktop/chrome/mobile_emulation/phone
    c) Mention the suite name in configuration.properties	
        configuration.suites=web
    d) Keep the environiment information which you are going to run and if you want to switch to other enviorniment change the below property accoringly,
    in the below example if you want to run in the QA environiment we need to define the property key as shown in below.
        configuration.environments=qa	
    
    SUITE.PROPERTIES:
    =================
    a) Add the resources location i.e the script/story located in the project.
    Ex: bdd.story-loader.batch-1.resource-location=story/desktop/appointments
    Note: If the story is located in package like story.desktop.appointments then replace the dot[.] with the forward slash[/].
    b) Include the story name if you want to run single script or keep *.story 
    Ex: bdd.story-loader.batch-1.resource-include-patterns=MH_desk_HealthCentreServices.story [for single story run]
        bdd.story-loader.batch-1.resource-include-patterns=*.story [which will run all the stories in the appointments package]
    c) If you want to run parallel batch execution keep the property value as 2.
        Ex: bdd.batch-1.threads=1 - single batch run	
            bdd.batch-1.threads=2 - keep more than 1 for multiple batch execution.			
    d) If you want to run the group execution add the below property key and mention the group name which is defined in the story under @Meta tag.
    #bdd.batch-1.meta-filters=groovy: (group == 'smoketest' && 'critical_path')

    ENVIRONIMENT.PROPERTIES:
    ========================
    a) It is the property file where we keep all the locator information. If any locator got changed in web application you directly come and update the locator without going to each script.
    Ex: bdd.variables.global.xpathFor_homeButton=xpath(//button[text()='Home'])

    OVERRIDDEN.PROPERTIES:
    ======================
    If you want to override any of the property that if you keep it here that will override the existing proeprty key which was defined in other proeperty keys.
    
    GRADLE.BUILD
    =============
    a) What ever the dependencies are needed in the project that should be defined here. In fututre if you want to upgrade to latest version of the 
        vividus you should modify here.
        Ex: vividusVersion = '0.4.13'[Latest version when this document prepared] 
         implementation(group: 'org.vividus', name: 'vividus', version: vividusVersion)

    KNOWN-ISSUES.json:
    =============
    a) what ever the existing issues/opened bugs you can mention here. Even thoough the script got failed it may not break the existing execution flow.
    
    SCRIPT DEVELOPMENT:
    ===================
    a) If you want to develop a new story/script using vividus, create a package and define your BDD steps by mentioning Meta tag,scenario ..etc information.
    Ex:
    Description: Abrief description about the scenario.
        Meta:

    @Epic PT-170[Jira-PT-234]
    @group smoketest
    @layout desktop
    @SmokeTest
    @Priority 1

    GivenStories: story/web/desktop/logIn/MH_Login.story - To avoid the duplication of steps call the exisiting property file.

    Scenario: Scenario: [Desktop][Articles] FAQ

        When I click on element located `By.buttonName(Help)`
        When I wait `PT10S` with `PT05S` polling until element located `${xpathFor_menuFAQ}` becomes VISIBLE
        When I click on element located `${xpathFor_menuFAQ}`
        .................

## Prerequisites
### Install and configure Git
1. Download and install [Git client](http://git-scm.com/downloads)
1. [Configure](https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup#_your_identity) your identity

### Install Java
1. The baseline is [LTS JDK 17](https://jdk.java.net/17/). [LTS JDK 11](https://jdk.java.net/11/) and the latest [JDK 18](https://jdk.java.net/18/) are supported as well
1. Configure `JAVA_HOME` environment variable
1. Update `PATH` environment variable:
    * Windows: add `%JAVA_HOME%/bin`
    * macOS / Linux: add `$JAVA_HOME/bin`

## How to use IDE for the tests development
### Eclipse
#### Prerequisites
1. Install [Eclipse IDE 2022-03](https://www.eclipse.org/downloads/packages/release/2022-03/r/eclipse-ide-java-developers)
1. Add [JBehave plugin](https://jbehave.org/eclipse-integration.html)
#### Import the project
1. Go to the root directory of the test project
1. Generates all Eclipse configuration files:
    ```shell
    ./gradlew eclipse
    ```
1. [Import the project to Eclipse](https://help.eclipse.org/2022-03/index.jsp?topic=%2Forg.eclipse.platform.doc.user%2Ftasks%2Ftasks-importproject.htm)


## How to run the tests via CLI
1. Assuming you are in the local directory with your cloned repository run your tests via Gradle:
    ```shell
    ./gradlew runStories
    ```

## How to view the test execution results
1. At the end of any test run, VIVIDUS will give you a link to where the corresponding test result was published. It should look like this:
    ```shell
    2022-04-12 13:38:15,523 [main] INFO  org.vividus.report.allure.AllureReportGenerator - Allure report is successfully generated at /dir/to/where/the/results-are-published/.out/vividus-demo/reports/allure/index.html
    ```
1. cd into the directory.
    ```shell
    cd /dir/to/where/the/results-are-published/.out/vividus-demo/reports/allure
    ```
1. Start a webserver of your choice, in the example below we are using a node webserver through port 3456
    ```shell
    ✔ ~/dir/to/where/the/results-are-published/.out/vividus-demo/reports/allure
    $ http-server -p 3456
    ```
1. Launch a browser, type `localhost:3456` into the URL. If you followed the instructions properly, you should see your report.


## Support
[**Slack Channel**](https://vividus-support.herokuapp.com/)
