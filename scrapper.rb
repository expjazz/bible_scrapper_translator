require 'nokogiri'
require 'httparty'
require 'byebug'

class Scrapper
  attr_accessor :unparsed_page, :parsed_page
  def initialize(page_num)   
    @unparsed_page = HTTParty.get('https://www.calvaryabq.org/teachings_search.asp?series=' + page_num.to_s)
    @parsed_page = Nokogiri::HTML(unparsed_page)
  end

  def list_chapter
    # unparsed_page = HTTParty.get('https://www.calvaryabq.org/teachings_search.asp?series=139')
    # parsed_page = Nokogiri::HTML(unparsed_page)
    num = 737
    while num < 3000
      list = @parsed_page.css('#row' + num.to_s).css('a')
      if list[0] != nil
        item = []
        list.each { |x| item << x if x.text.include?('Genesis') }
        p item[0].text if item[0] != nil
      else
      end
      num += 1
    end
  end

  def find_link_from_chapter (chapter)
    content_link = @parsed_page.at_css('a:contains("' + chapter + '")')['href']
    content_link 
  end  

  def find_transcript(link)
    unparsed_page = HTTParty.get('https://www.calvaryabq.org/' + link)
    parsed_page = Nokogiri::HTML(unparsed_page)
    p parsed_page.css('#detailednotes').text
    return parsed_page.css('#detailednotes').text
  end
end
# scrapy = Scrapper.new(137)

# p scrapy.list_chapter

# p scrapy.find_link_from_chapter('Genesis 1:24-2:25')
# p scrapy.find_transcript("teachings_view.asp?ServiceID=739")

=begin
Code to find element by text
parsed_page.at_css('a:contains("Genesis 1:24-2:25")')['href']
   
    
=end
