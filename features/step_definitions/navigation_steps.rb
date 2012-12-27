require_relative 'helpers/articles_helper.rb'

##
# Routing constants
# Some of these should be taken from a configuration
# or something like that :)
##
ROOT = '/'
ARTICLE_PREFIX = '/article/'

##
# Steps definitions
##

When "I visit the homepage" do
  visit(ROOT)
end

When /^I visit section "(.*)"$/ do |section|
  visit(ROOT + section.parameterize)
end

When /^I visit a "(.*?)" article$/ do |attributes_list|
  attributes = attributes_list.split('+').map { |a| a.strip.gsub(/[^\w]/, '_').to_sym }
  slug = CucumberHelpers::ArticlesHelper.get_url(attributes)

  visit(ARTICLE_PREFIX + slug)
end