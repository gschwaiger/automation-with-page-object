#opens window in default browser

Before do
  @browser = Watir::Browser.new
end

After do
  # @browser.close
end