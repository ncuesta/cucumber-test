##
# Routing constants
##
ROOT = '/'

##
# Steps definitions
##

When "I visit the homepage" do
  visit(ROOT)
end

When /^I visit section "(.*)"$/ do |section|
  visit(ROOT + section.parameterize)
end