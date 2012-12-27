Feature: Articles detail page
  In order to show the articles
  and their related content
  Visitors should be able to
  see their detail pages
  in different formats

  Scenario: Default article detail view - Fully written article
    Given I am a visitor
     When I visit a "full" article
     Then I will see the article layout
      And I will see the article's short heading
      And I will see the article's title
      And I will see the article's lead paragraph
      And I will see the article's body
      And I will see the article's byline

  Scenario: Default article detail view - Only-title article
    Given I am a visitor
     When I visit a "title" article
     Then I will see the article layout
      And I will see the article's title
      But I won't see the article's short heading
      And I won't see the article's lead paragraph
      And I won't see the article's body
      And I won't see the article's byline

  # As seen on
  # eldia.com/edis/20121227/Violento-asalto-panaderia-20121227080535.htm
  Scenario: Default article detail view - Title + lead article
    Given I am a visitor
     When I visit a "title + lead" article
     Then I will see the article layout
      And I will see the article's title
      And I will see the article's lead paragraph
      But I won't see the article's short heading
      And I won't see the article's body
      And I won't see the article's byline

  # As seen on
  # eldia.com/edis/20121227/Saldo-alentador-menor-cantidad-victimas-mal-uso-pirotecnia-opinion3.htm
  @wip
  Scenario: Default article detail view - Title + body article
    Given I am a visitor
     When I visit a "title + body" article
     Then I will see the article layout
      And I will see the article's title
      And I will see the article's body
      But I won't see the article's short heading
      And I won't see the article's lead paragraph
      And I won't see the article's byline

  # As seen on
  # eldia.com/edis/20121227/Sin-bancos-medida-gremial-20121227082951.htm
  Scenario: Default article detail view - Title + lead + body article
    Given I am a visitor
     When I visit a "title + lead + body" article
     Then I will see the article layout
      And I will see the article's title
      And I will see the article's body
      And I will see the article's lead paragraph
      But I won't see the article's short heading
      And I won't see the article's byline

  # As seen on
  # eldia.com/edis/20121227/Brote-tension-saqueo-comercios-Hornos-detenidos-elpais4.htm
  Scenario: Article with big gallery
    Given I am a visitor
     When I visit a "big gallery" article
     Then I will see the article layout
      And I will see the article's big gallery
      And I will see the article's title

  # As seen on
  # eldia.com/edis/20121227/Un-baile-torno-muerte-parece-lejana-opinion1.htm
  Scenario: Article with big image
    Given I am a visitor
     When I visit a "big image" article
     Then I will see the article layout
      And I will see the article's big image
      And I will see the article's title