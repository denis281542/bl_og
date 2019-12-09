class Parser < ApplicationRecord

  def parser
    require 'openssl'
    url = "https://hh.ru/search/vacancy?area=113&st=searchVacancy&text=ruby+on+rails&customDomain=1"
    doc = Nokogiri::HTML(open(url))
    
    entries = doc.css('.lagos-market-rates-inner')
    rate = entries.css('table')[0].css('tr')[1].css('td')[1].text
    @formattedrate = rate[6..8]
    render template: 'parallel/home'
  end








  def parser
  url = "https://hh.ru/search/vacancy?area=113&st=searchVacancy&text=ruby+on+rails&customDomain=1"
  doc = Nokogiri::HTML(open(url))
    doc.css(".vacancy-serp-item").each do |items|
      vakancy = items.css(".HH-LinkModifier").text
      salary = items.css(".vacancy-serp-item__compensation").text
      date_of_publ= items.css(".vacancy-serp-item__publication-date").text 
      unless salary.empty? 
        puts "#{vakancy} - #{salary}" 
        puts "#{date_of_publ}"
        puts "======="
      end 
    end 
  end
end
