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
     When I visit section "<a_section>" at "<url>"
     Then I will see ads

  Examples:
    | a_section    | url                  |
    | El Mundo     | /el-mundo            |
    | El País      | /el-pais             |
    | La Ciudad    | /la-ciudad           |
    | La Provincia | /la-provincia        |
    | Inf. General | /informacion-general |
    | Opinión      | /opinion             |
    | Policiales   | /policiales          |
    | Deportes     | /deportes            |
    | Espectáculos | /espectaculos        |


  Scenario: Ads should take the visitor to an affiliate page
    Given I am a visitor
     When I visit the homepage
      And I click on an ad
     Then I will be taken to an affiliate page