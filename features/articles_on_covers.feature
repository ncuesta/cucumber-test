Feature: Articles on covers
  In order to make the site usable
  Visitors should be able to
  find some articles on the covers

  Scenario: At least one article is visible on the homepage cover
    Given I am a visitor
     When I visit the homepage
     Then I will see the homepage cover
      And I will see an article
      And the article's title will be a link
