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
test = Translator.new("Introduction - Genesis Records:    Events  (Chapters 1-11, 2000+ years of history)  Formation  of the UniverseFall  of ManFlood  on EarthFallout  from Rebellion (Tower of Babel)Formation  of a Nation  People  (Chapters 12-50, 350 years)  Abraham  (Abram)      Father  of those who believe    3  religions revere him, (Jewish, Christian, Muslim)    Our  example of justification by faith (Romans, Galatians, Hebrews 11)    Friend  of God (2 Chronicles 20, Isaiah 41, James 2)  IsaacJacobJoseph          Abram's Testimony     Background  (Genesis 11:24->)  Terah  was his fatherUr  (Southern Mesopotamia)      Greatest,  most advanced city    300,000  people    Cultural  (music, crafts, university, library)    Center  of idolatry, animistic, moon god Sin, Joshua 24:1-3 (legend says Terah was a  dealer in idols and Abram was his assistant)  Haran  died (Abram's brother) (vs. 28)      Tragedy  which impacted Abram    Abram  raised Haran's son, Lot    Fable-  Terah told Haran to worship the god of fire, when he refused his father threw  him into the furnace.  Sarai,  his wife is barren (vs. 30)      In  ancient cultures barreness is viewed as a curse    Leah,  Rachel, Jewish tradition    Spiritual  Journey  The  Lord HAD said get out of your countryHe  didn't fully obey      Abram  wasn't leading and didn't leave his family Terah was leading    Didn't  go to the promised land until his Father died    Stopped  at Haran, a border town, (means delay)    In  tough circumstances, he didn't obey God  Application  - Your past and your heritage can be viewed as a hitching post and hold you  back or a guide post you learn from and move forward.  Covenant with God 12:1What  GOD has done 1 John 4 (it's about what He has done, not about you)I  will make you a great nation (Abram was 745 years old, with an infertile wife,  now there are 7.2 million in Israel, 5.6 million are Jews, 43% growth rate is  due to immigration, #4 in citrus production, #3 in flowersI  will make your name great (God identifies Himself with the name Abraham, less  that 2/3 of 1% of the world population are Jews, but they have won 25-33% of  all Nobel prizes.And  you shall be a blessing (Bible, 10 commandments, Savior)You  will become a great need (bless those who bless you, curse those who curse  you…those who turn against Israel become second rate nations)God  told Abram to leave and he left. Didn't know where he was going, but he  believed the promise. (what do you do with God's promises?)The  route he took was along the rivers, Shechem, Bethel, Ai ")

p test.translate