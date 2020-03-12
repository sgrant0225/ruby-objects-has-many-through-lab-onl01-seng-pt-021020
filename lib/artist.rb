class Artist 
 attr_accessor :name
  
  @@all = []
 
 def initialize(name)
   @name = name 
   @@all << self
  end
  
  def self.all
   @@all #knows about all Artist instances
  end  
  
  def songs
    Song.all.select do |artist_song|
      artist_song.artist == self
    end
  end 
  
  def genres
   songs.collect do |song_genre|
     song_genre.genre
   end
  end  
  
  def new_song(name, genre)
     Song.new(name, self, genre)
  end  
    
end  