require 'rubygems'
require 'nokogiri'
require 'open-uri'

url = "https://www.walmart.com/search/?query=macbook%20laptop&cat_id=3944&typeahead=macbook"
doc = Nokogiri::HTML(open(url))
puts  doc.at_css("title").text
doc.css(".u-size-1-5-xl").each do |items|
  title = items.at_css(".line-clamp-2").text
end


 
