require 'nokogiri'

class Scraper

  def self.scrape_episodes
    site = Nokogiri::HTML(open("https://tunein.com/podcasts/Sports--Recreation-Podcasts/The-Gator-Nation-Football-Podcast-p1002581/"))

    episodes = site.css(".containerGuideItemsContainer")

    list = {};

    episodes.each do |episode|
      title = episode.css("h2.guide-item__guideItemTitleSingleLine___3ev9Q guide-item__guideItemTitle___VBHQg").text
      episodes[title.to_sym] = {
        :publish_date => episode.css(".guide-item__guideItemSubtitle___2hQxF common__truncate___1k9L1").text,

        :description => episode.css("div.ReactCollapse--content.guide-item__guideItemDescription___Qcx1v")
      }


      #title: "h2.guide-item__guideItemTitleSingleLine___3ev9Q guide-item__guideItemTitle___VBHQg"
      #publish_date: ".guide-item__guideItemSubtitle___2hQxF common__truncate___1k9L1"
      #description: "div.ReactCollapse--content.guide-item__guideItemDescription___Qcx1v"
    end

      #return episodes hash
      episodes
  end

end
