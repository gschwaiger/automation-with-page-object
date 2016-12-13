#GoogleHomePage directs watir-webdriver to google's home page

require 'page-object'

class GoogleHomePage
  include PageObject::PageFactory

  page_url 'www.google.com'
  text_field(:search_phrase, id: 'lst-ib')
  link(:about, text: 'About')

  #search
  def search_for(phrase)
    self.search_phrase = phrase
    @browser.send_keys :enter
    sleep 10
  end
end

