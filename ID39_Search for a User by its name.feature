Feature: ID39_Search for a user by his/her name

    User Stories:
    As I user
    I want to be able to search for a user by his/her name
    So I can view his/her profile or add him/her to my friend list


    Background: 
        Given I am logged in


    Scenario: (Normal Flow) Search for a user by his/her name successfully
        When I search for a user with his/her correct name
        Then the user should be found 
        And I can see his/her profile

    Scenario: (Alternative Flow) Search for a user but the name is incorrect
        When I search for a user with his/her incorrect name
        Then the user should not be found 
        And I see message: no user with this name 


    Scenario: (Error Flow) Search for a user but the name is null 
        When I search for a user with the input name be Null
        Then the user should not be found 
        And pop window: user name cannot be Null