require 'nokogiri'
require 'httparty'
require 'byebug'
require 'selenium-webdriver'

class Translator
  attr_reader :content
  def initialize(content)
    @content = content
  end

  def translate
    # unparsed_page = HTTParty.get('https://translate.google.com/?hl=pt-BR&tab=TT#view=home&op=translate&sl=en&tl=pt&text=testing')
    # parsed_page = Nokogiri::HTML(unparsed_page)
    # translation = parsed_page.css("span.translation")
    # return translation
  driver = Selenium::WebDriver.for :firefox

  driver.get('https://translate.google.com/?hl=pt-BR&tab=TT#view=home&op=translate&sl=en&tl=pt&text=' + @content)
  test = driver.find_element(class: 'translation').text
  test
  end
end
