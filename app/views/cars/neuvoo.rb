require 'rubygems'
require 'nokogiri'
require 'open-uri'

url = "https://neuvoo.co.uk/jobs/?k=ruby+on+rails&l=&f=&o=&p=&r=15"
doc = Nokogiri::HTML(open(url))
puts  doc.css("#neuvoo-logo").text
#doc.css(".u-size-1-5-xl").each do |items|
  title = items.css("h2").text
  #price = items.css(".price-main").text[/[0-9\.]+/]
  #puts  "#{title} - #{price}"
  #puts items.at_css(".line-clamp-2")[:href]
#end

