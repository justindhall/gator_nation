require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_episodes
    site = Nokogiri::HTML(open("http://www.blogtalkradio.com/gatornationfbpodcast"))

    episodes = []

    site.css("div.paging_container1").each do |block|
      block.css(".episode-container.ondemand episode-details").each do |episode|
        title_ = episode.css('.title').text
        publish_date_ = episode.css('ul li.third').text
        description_ = episdoe.css('KonaBody description').text
        episodes << {title: title_, publish_date: publish_date_, description: description_}
      end
    end

=begin
    episodes.each do |episode|
      title = episode.css(".episode-container ondemand episode-details h3").text
      episodes[title.to_sym] = {
        :publish_date => episode.css("").text,

        :description => episode.css("div.ReactCollapse--content.guide-item__guideItemDescription___Qcx1v")
      }


      #title: "h2.guide-item__guideItemTitleSingleLine___3ev9Q guide-item__guideItemTitle___VBHQg"
      #publish_date: ".guide-item__guideItemSubtitle___2hQxF common__truncate___1k9L1"
      #description: "div.ReactCollapse--content.guide-item__guideItemDescription___Qcx1v"
      #episodes: ".paging_container1"
    end
=end

      #return episodes
      episodes
  end
end
