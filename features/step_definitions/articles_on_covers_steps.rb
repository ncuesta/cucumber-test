##
# Steps definitions
##

Then "I will see an article" do
  page.should have_css '.article'
end

Then "the article's title will be a link" do
  page.should have_css '.article a.title'
end