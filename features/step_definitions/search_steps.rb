#search_steps defines the program's workflow 

require 'page-object'
include PageObject

#steps
#match text in google.feature

#when
When(/^I search for a common phrase$/) do
  visit_page(GoogleHomePage) do |page|
    page.search_for 'dog' 'Dog'
  end
end

#then
Then(/^every result title should include the word I searched for$/) do
    on_page(GoogleSearch) do |page|
      divs = page.divs
      divs.each do |divs|
        expect(search_results).to include 'dog' 'Dog'
      end
    end
end
