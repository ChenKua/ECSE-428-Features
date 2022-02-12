Feature: ID40_Change the user name

    User Stories:
    As I a user
    I want to change my user name
    So that I can show my individuality and difference


    Background:
    Given I am logged in 


    Scenario: (Normal Flow) Change my user name successfully
        When I chagne the user name and input a new unique name
        Then my user name is updated

    Scenario: (Alternative Flow) Change my user name unsuccessfully
        When I chagne the user name and input a non-unique name
        Then my user name is not updated
        And a message say: the name is taken

    Scenario: (Error Flow) Search for a user but the name is null 
        When I chagne the user name and input Null
        Then my user name is not updated
        And a pop window: input name cannot be null
