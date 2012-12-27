Feature: Site-wide ads
  In order to monetize the site
  Visitors should be able to
  see ads at most site pages

  Scenario: Ads are visible on the homepage
    Given I am a visitor
     When I visit the homepage
     Then I will see ads

  Scenario Outline: Ads are visible on generic covers
    Given I am a visitor
     When I visit section "<a_section>"
     Then I will see ads
  Examples:
    | a_section    |
    | El Mundo     |
    | La Ciudad    |
    | Espectáculos |

  Scenario: Ads should take the visitor to an affiliate page
    Given I am a visitor
     When I visit the homepage
      And I click on an ad
     Then I will be taken to an affiliate page