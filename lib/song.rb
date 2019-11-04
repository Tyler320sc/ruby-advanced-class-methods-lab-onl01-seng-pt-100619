class Song
  attr_accessor :name, :artist_name
  
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create 
  song = self.new  
    @@all << song 
  song 
  end 
  
  def self.new_by_name(new_song)
    song = self.create
    song.name = new_song
    song 
  end 
  
  def self.find_by_name(song_name)
  end 
  
end

  # song  = Song.create 
  # Song.all.include?(song)
   
  
#   But you need to return the son
# User avatar
# Benjamin Aschenbrenner 2 MINUTES AGO
# Which may mean you need to a) instantiate it and save it under a variable name
# User avatar
# Benjamin Aschenbrenner 2 MINUTES AGO
# b) shovel it into the @@all
# User avatar
# Benjamin Aschenbrenner 2 MINUTES AGO
# c) return it