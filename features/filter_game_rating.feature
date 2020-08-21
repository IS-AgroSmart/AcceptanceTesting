# language: en

Feature: Search games by rating

  @gamesByRating
  Scenario: Filter games that have ratings "M" and "T" in their name
      Given a set of games
     | NAME                       | RELEASE DATE | DEVELOPER            | RATE   |
     | The Witcher 3: Wild Hunt   | 2015         | CD Projekt           | M      |
     | Splatoon                   | 2016         | Nintendo             | T      |
     | Super Smash Bros. Ultimate | 2018         | Bandai Namco Studios | E      |
     | The Last of Us             | 2013         | Naughty Dog          | M      |
      Given the user enters the ratings: M,T
      When the user search games by rating
      Then 3 games will match
      And the names of these games are
      | NAME                       |
      | The Witcher 3: Wild Hunt   |
      | The Last of Us             |
      | Splatoon                   |
      And the following message is displayed: 3 games were found.
