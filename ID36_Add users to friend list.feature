Feature: ID36_Add User to frined list

    User stories:
    As I user
    I want to be able to add antoher user to my friend list 
    So that I can have a game with him next time

    Background:
    Given I am logged in

    Scenario: (Main flow) Add a user to friend list successfully
    When I add a user to my friend list by his/her name
    And the name correct
    Then the user will be on my friend list
    And my number of friends increments by 1

    Scenario: (Main flow) Add a user to friend list unsuccessfully
    When I add a user to my friend list by his/her name
    And the name is not correct
    Then the user will not be on my friend list
    And my number of friends stay the same