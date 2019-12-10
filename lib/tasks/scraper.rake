namespace :scraper do
  desc "Run scraper"
  task :run => :environment do
    data = BaseScraper.parser
    Post.create(data) if data
  end
end

task :default => 'scraper:run'