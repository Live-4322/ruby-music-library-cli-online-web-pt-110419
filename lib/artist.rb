require 'pry'
class Artist 
  extend Concerns::Findable
  
  attr_accessor :name, :songs
   @@all = []
  def intialize(name)
  @name = name
  @songs = []
  end

 def self.all
   @@all
 end
 
 def self.destroy_all
   all.clear
 end
 
 def save
   self.class.all << self
 end

def self.create(name)
  artist = new(name)
  artist.save
  artist
end

def add_song(song)
  song.artist = self unless song.artist
  @songs << songs.includes?(song)
 # if song.artist = nil 
 # song.artist = self
 # songs << song
 # songs
  end
 end
 
 def genres 
  songs.collect do |song|
  end.uniq
 end
