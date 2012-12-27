##
# Selectors
##

ARTICLE_LAYOUT_SELECTOR = '.article'
HEADING_SELECTOR        = ARTICLE_LAYOUT_SELECTOR + ' .heading'
TITLE_SELECTOR          = ARTICLE_LAYOUT_SELECTOR + ' .title'
LEAD_SELECTOR           = ARTICLE_LAYOUT_SELECTOR + ' .lead'
BODY_SELECTOR           = ARTICLE_LAYOUT_SELECTOR + ' .body'
BYLINE_SELECTOR         = ARTICLE_LAYOUT_SELECTOR + ' .byline'
BIG_GALLERY_SELECTOR    = ARTICLE_LAYOUT_SELECTOR + ' .big_gallery'
BIG_IMAGE_SELECTOR      = ARTICLE_LAYOUT_SELECTOR + ' .big_image'


##
# Steps definitions
##

Then /^I will see the article layout$/ do
  page.should have_css ARTICLE_LAYOUT_SELECTOR
end

Then /^I will see the article's short heading$/ do
  page.should have_css HEADING_SELECTOR
end

Then /^I will see the article's title$/ do
  page.should have_css TITLE_SELECTOR
end

Then /^I will see the article's lead paragraph$/ do
  page.should have_css LEAD_SELECTOR
end

Then /^I will see the article's body$/ do
  page.should have_css BODY_SELECTOR
end

Then /^I will see the article's byline$/ do
  page.should have_css BYLINE_SELECTOR
end

Then /^I won't see the article's short heading$/ do
  page.should_not have_css HEADING_SELECTOR
end

Then /^I won't see the article's lead paragraph$/ do
  page.should_not have_css LEAD_SELECTOR
end

Then /^I won't see the article's body$/ do
  page.should_not have_css BODY_SELECTOR
end

Then /^I won't see the article's byline$/ do
  page.should_not have_css BYLINE_SELECTOR
end

Then /^I will see the article's big gallery$/ do
  page.should_not have_css BIG_GALLERY_SELECTOR
end

Then /^I will see the article's big image$/ do
  page.should_not have_css BIG_IMAGE_SELECTOR
end