require 'watir'
require'cucumber'
require 'minitest/autorun'

Given(/^user goes to "([^"]*)"$/) do |arg|
  @browser.window.maximize
  @browser.goto"#{arg}"
end

When(/^user searches "([^"]*)"$/) do |arg|
  @browser.text_field(:name => "query").set "#{arg}"
  @browser.div(:id => "fast-search-modal").wait_until_present
end

And(/^user opens "([^"]*)" item$/) do |arg|
  @browser.iframe(:css => ".modal-iframe").wait_until(&:enabled?).input(:css => ".search__input").click
  @browser.iframe(:css => ".modal-iframe").link(:text => "#{arg}").wait_until_present.wait_until(&:enabled?).click
end

Then(/^user sees screen size is equal to "([^"]*)"$/) do |arg|
  assert_equal("#{arg}",
               @browser.element(:xpath => "//table[@class='product-specs__table']//tbody[2]//tr[5]//td[2]").text.strip,
               "Screen size is not correct")
end

Then(/^user sees physical-based matrix size is equal to "([^"]*)"$/) do |arg|
  assert_equal("#{arg}",
               @browser.element(:xpath => "//table[@class='product-specs__table']//tbody[2]//tr[7]//td[2]").text.strip,
               "Physical-based matrix size is not correct")
end

And(/^user sees quantity-based matrix size is equal to "([^"]*)"$/) do |arg|
  assert_equal("#{arg}",
               @browser.element(:xpath => "//table[@class='product-specs__table']//tbody[2]//tr[6]//td[2]").text.strip,
               "Quantity-based matrix size is not correct")
end

When(/^user adds item to cart$/) do
  @browser.link(:css => ".b-top-navigation-cart__link").wait_until_present.wait_until(&:enabled?)
  assert_equal("В корзину", @browser.element(:css => ".product-aside__item-button").text.strip)
  @browser.link(:css => ".product-aside__item-button").wait_until(&:enabled?).click
  assert_equal("В корзине", @browser.element(:css => ".product-aside__item-button").text.strip)
end

And(/^user opens cart$/) do
  @browser.link(:css => ".b-top-navigation-cart__link").click
end


Then(/^user sees item "([^"]*)" is added to cart$/) do |arg|
  assert_equal("#{arg}",
               @browser.span(:css => ".cart-products .cart-product .cart-product-title__link_name span").text.strip,
               "Item '#{arg}' is not added")
end