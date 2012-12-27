Feature: Site covers
  In order to browse the site
  Visitors should be able to see covers

  Scenario: Homepage (site's root) cover
    Given I am a visitor
     When I visit the homepage
     Then I will see the homepage cover

  Scenario Outline: Generic site cover
    Given I am a visitor
     When I visit section "<a_section>"
     Then I will see the cover for "<a_section>"
    Examples:
      | a_section |
      | El País   |
      | Deportes  |