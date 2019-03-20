class Scraper

  def self.scrape_episodes
    host = Nokogiri::HTML(open("https://tunein.com/podcasts/Sports--Recreation-Podcasts/The-Gator-Nation-Football-Podcast-p1002581/?topicId=129210902"))

    episodes = site.css(".containerGuideItemsContainer")

    episodes.collect do |episode|
      index =


end
