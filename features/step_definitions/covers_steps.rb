When "I visit the homepage" do
  visit('/')
end

Then "I will see the homepage cover" do
  page.should have_css '.cover'
end

When /^I visit section "(.*)" at "(.*)"$/ do |section, url|
  @url = url.gsub(/^\//, '')
  visit(url)
end

Then /^I will see the cover for "(.*)"$/ do |section|
  page.should have_css '.cover'
  page.should have_css '.' + @url
end