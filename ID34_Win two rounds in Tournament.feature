Feature: ID34_Win two rounds to win the game 

    User stories:
    As a user
    I want to be able to win two rounds during the Tournament mode
    So that I can win the game

    Background:
    Given I am in a Tournament game

    Scenario: (Main flow) Win two rounds successfully
    When I win two rounds of the game
    Then the game ends
    And I am the winner of this game

    Scenario: (Alternative flow) The other players win two rounds 
    When I do not win 2 rounds
    And some users have won 2 rounds
    Then the game ends 
    And I am not the winner

    Scenario: (Error flow) Win two rounds but have Internet issue 
    When I win two rounds of the game
    And I have Internet connection issue
    Then the game ends
    And I am not the winner