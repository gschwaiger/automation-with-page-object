#GoogleSearch displays the text of the google search

require 'page-object'

class GoogleSearch
  include PageObject

  #div that contains the text/result titles
  def divs
    @browser.divs(class: 'rc').collect do |div|
      div.h3.a.text
    end
  end
end