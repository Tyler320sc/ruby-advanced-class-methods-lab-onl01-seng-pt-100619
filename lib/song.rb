class Song
  attr_accessor :name, :artist_name
  
  @@all = []

  def initialize(song)
    @song = song 
      song  = Song.create 
   Song.all.include?(song)
  end 

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  # song  = Song.create 
  # Song.all.include?(song)

end

  #   song  = Song.create 
  # Song.all.include?(song)
  
  
  