module CucumberHelpers
  class ArticlesHelper
    VALID_ATTRIBUTES = [:heading, :title, :lead, :body, :byline, :big_gallery, :big_image]

    # Get an article URL slug that satisfies the passed in attributes
    # Attributes might be any combination of the following:
    #   * :heading
    #   * :title
    #   * :lead
    #   * :body
    #   * :byline
    #   * :big_gallery
    #   * :big_image
    # Or you wan use :full to select them all.
    #
    # Note: As :title is a required attribute, it will always be provided,
    # regardless to whether it's been selected or not.
    def self.get_url(attributes = [])
      # As this is a mock, there's no need to have a set of "safe" articles.
      # We'll just create a pretend URL that states which parts need to be shown:
      self.sanitize(attributes).join('-')
    end

    def self.sanitize(attributes = [])
      return ['full'] if attributes.include?(:full)

      (attributes + [:title]) & VALID_ATTRIBUTES
    end
  end
end