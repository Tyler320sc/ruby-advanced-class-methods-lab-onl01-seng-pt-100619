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
    song = self.new 
    song.name = new_song
    song 
  end 
  
  def self.create_by_name(new_song)
    song = self.create
    song.name = new_song
    song 
  end 
  
  def self.find_by_name(song_name)
    self.all.detect{|song| song.name == song_name}
  end 
  
  def self.find_or_create_by_name(song_name)
    self.find_by_name(song_name) || self.create_by_name(song_name)
  end 
  
  def self.alphabetical
    self.all.sort_by{|song| song.name}
  end 
  
  def self.new_from_filename(filename)
    song = self.new
    song.name = (filename.split(" - ")[1].chomp(".mp3"))
    song.artist_name = (filename.split(" - ")[0])
    song 
  end 
  
    def self.create_from_filename(filename)
    song = self.new
    song.name = (filename.split(" - ")[1].chomp(".mp3"))
    song.artist_name = (filename.split(" - ")[0])
    @@all << song
    song 
  end 
  
  def self.destroy_all
    @@all.clear 
  end 
  
end
