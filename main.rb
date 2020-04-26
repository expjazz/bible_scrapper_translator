require_relative 'user'
require_relative 'bible'
require_relative 'scrapper'
require_relative 'translator'

class Logic
  def flow
    
    bible = Bible.new
    user = User.new
    book = user.ask_book
    bible_num = bible.bible_book_num(book)
    p bible_num
    scrapy = Scrapper.new(bible_num)
    scrapy.list_chapter
    chapter = user.chapter
    link = scrapy.find_link_from_chapter(chapter)
    transcript = scrapy.find_transcript(link)
    translator = Translator.new(transcript)
    result = translator.translate
    result
  end
end

test = Logic.new
p test.flow