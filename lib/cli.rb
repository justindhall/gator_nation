require_relative "../lib/scraper.rb"
require_relative "../lib/episodes.rb"

class CLI
  attr_accessor :episodes

  def call
    puts "Hello Gator Fan! Welcome to the Gator Nation Football Podcast!"

    list_episodes
    menu

    puts "Go Gators!"
end


def list_episodes
  puts "Here are the most recent episodes of the pod: "
  @episodes = Scraper.scrape_episodes
  @episodes.each_with_index do |episode, index|
    puts "#{index+1}. #{episode.name}"
  end
end

def menu

  input = nil
  while input != "quit"
    puts "Which episode would you like to read more about? Type quit to exit."
    input = gets.strip
    case input
    when "list"
      @episodes.each_with_index do |episode, index|
        puts "#{index+1}. #{episode.name}"
      end
    when "1"
      puts Episodes.all[0].description
    when "2"
      puts Episodes.all[1].description
    when "3"
      puts Episodes.all[2].description
    when "4"
      puts Episodes.all[3].description
    when "5"
      puts Episodes.all[4].description
    when "6"
      puts Episodes.all[5].description
    when "7"
      puts Episodes.all[6].description
    else
      puts "Please enter a valid choice or type quit to exit."
    end
  end
end

end
