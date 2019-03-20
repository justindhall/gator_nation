class Episodes
  attr_accessor :title, :publish_date, :description

  @@all = []

  def initialize(title, publish_date, description)
    @title = title
    @publish_date = publish_date
    @description = description

    @@all << self
  end

  def self.all
    @@all
  end

end
