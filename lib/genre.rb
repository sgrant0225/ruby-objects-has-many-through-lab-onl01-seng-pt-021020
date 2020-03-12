require 'pry'

class Genre 
  attr_accessor :name
   
   @@all = []
 
  def initialize(name)
   @name = name
   @@all << self
  end  
  
  def self.all
   @@all
  end  
  
  def songs #find songs that belong to that genre
   Song.all.select do |songs|
    songs.genre == self
   end
  end  
  
  def artists #collects the artist that owns each song.
      songs.collect do |song_artist|
      song_artist.artist
    end
 end
end  