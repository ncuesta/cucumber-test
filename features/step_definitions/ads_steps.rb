When "I click on an ad" do
  @current_url = page.current_url
  click_on 'ad'
end

Then "I will see ads" do
  page.should have_css '.ad'
end

Then "I will be taken to an affiliate page" do
  page.current_url.should_not == @current_url
end