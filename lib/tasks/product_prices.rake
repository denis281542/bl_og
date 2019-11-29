desc "Fetch product prices"
task :fetch_prices => :environment do 
  require 'nokogiri'
  require 'open-uri'

  Car.find_or_create_by(nil).each do |product|
    url = "https://www.walmart.com/search/?query=macbook%20laptop&cat_id=3944&typeahead=macbook"
    doc = Nokogiri::HTML(open(url))
    puts  doc.css("title").text
    doc.css(".u-size-1-5-xl").each do |items|
      title = items.css(".line-clamp-2").text
      price = items.css(".price-main").text[/[0-9\.]+/]
      puts  "#{title} - #{price}"
      #puts items.at_css(".line-clamp-2")[:href]
    end
  end
end