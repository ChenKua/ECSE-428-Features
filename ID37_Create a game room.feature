Feature: ID37_Create a game room

    User stories:
    As a player
    I want to be able to create a game room with a room name 
    So that I can invite my frineds to the room and we can have a game together

    Background:
        Given I have login my account

    Scenario: (Normal Flow) Create a game room with a name successfully
        When I create a game room with a unique room name
        Then a game room is created with the name
    
    Scenario: (Alternative Flow) Create a game room with a non-unique name 
        When I create a game room with a non-unique room name
        Then a game room is not created
        And a message says: The room name is taken

    Scenario: (Error Flow) Create a game room with null
        When I create a game room with a room name to be Null
        Then A game room is not created
        And there is a pop window: room name cannot be Null