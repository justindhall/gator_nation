require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_episodes
    site = Nokogiri::HTML(open("https://www.stitcher.com/podcast/gator-nation-football-podcast"))

    episodes = []

    site.css(.episodes).each do |block|
      block.css("ol li.episodesContainer").each do |episode|
        title_ = episode.css('first.a').text
        publish_date_ = episode.css('.info span.when').text
        duration_ = episode.css('.info span.duration').text
        episodes << {title: title_, publish_date: publish_date_, description: description_}
      end
    end

#episodes_list: "section.episodes"
#

      #return episodes
      episodes
  end
end
