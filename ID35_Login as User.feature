Feature: ID35_Login as User

    User Stories:
    As a user
    I want to login in to my account
    With a password and username
    So that I can access my account information like friend list


    Scenario: (Normal Flow) Login as a User successfully 
        When I input the correct username and password
        Then I should login to my account

    Scenario: (Alternative Flow) Login fail due to incorrect password 
        When I input the username and incorrect password
        Then I cannot login to my account
        And there is a message saying: incorrect password


    Scenario: (Error Flow) Try to login with non-existing username
        When I input the non-existing username
        Then I cannot login to my account
        And there is a pop window: non-existing username
