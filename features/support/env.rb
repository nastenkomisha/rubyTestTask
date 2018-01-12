def browser_name
    (ENV['BROWSER'] ||= 'chrome').downcase.to_sym
end

Before do |scenario|
    @browser = Watir::Browser.new browser_name
end

After do |scenario|
  @browser.close
end