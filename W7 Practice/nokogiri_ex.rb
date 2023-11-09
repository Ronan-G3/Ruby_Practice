require 'nokogiri'
require 'pp'

file = File.open("feet/feet.html")
doc = Nokogiri::HTML(file)

elements = doc.xpath("//p")
p elements.length
p elements.last
p elements.last.inner_html
p elements.last.inner_text

