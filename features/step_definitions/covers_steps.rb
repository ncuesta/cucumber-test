##
# Selectors
##
COVER_SELECTOR = '.cover'

##
# Utility methods
##

# Returns whether the page is a cover
def be_cover
  have_css COVER_SELECTOR
end

##
# Steps definitions
##

Then "I will see the homepage cover" do
  page.should be_cover
end

Then /^I will see the cover for "(.*)"$/ do |section|
  section_selector = '.' + section.parameterize

  page.should be_cover
  page.should have_css section_selector
end