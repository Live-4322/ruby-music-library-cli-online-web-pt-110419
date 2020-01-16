class Musiclibrarycontroller
  
  def intialize(path= "./db/mp3s")
    Musicimporter.new(path).import
    end
    
    def call
      input = ""
      while input != "exit"
       puts "Welcome to your music library!"
       puts "to list all your songs, enter 'List songs'."
       puts "to list all the artist in your library, enter 'List artists'."
       puts "to list all the genres in your library, enter 'List genres'."
       puts "to list all the songs by a particular artist, enter 'List artists'."
       puts "to list all the songs by a particular genre, enter 'List genre'."
       puts "to play a song, enter 'play song'."
       puts "to quit, type 'exit'."
       puts "What would you like to do?"
      
      input = gets.strip
      
      case input
      when "list songs"
        list_songs
      when "list artists"
        list_artist
      when "list genres"
        list_genres
      when "list artists"
        list_songs_by_artistartist
      when "list genres"
        list_songs_by_genre
      when "play Song"
        play_song
       end
    end
  end
    def list_songs
      Song.all.sort{|a,b| a.name <=> b.name }.each_with_index{|song, index| puts "#{index + 1}. #{song.artist.name} - #{song.name} - #{song.genre.name}"}
end

   def list_artists
     Artist.all.sort{|a,b| a.name <=> b.name }.each_with_index{|artist, index| puts "#{index + 1}. #{artist.name}"}
end
   
   def list_genre
     Genre.all.sort{|a,b| a.name <=> b.name }.each_with_index{|genre, index| puts "#{index + 1}. #{genre.name}"}
end

   def list_songs_by_artist
     puts "Please enter the name of the artist:"
     input = gets.strip 
     If Artist.find_by_name(input)
     artist.songs.sort{|a,b| a.name <=> b.name }.each_with_index{|song, index| puts "#{index + 1}. #{song.name} - #{song.genre.name}"}
end
  
end

   def list_songs_by_genre
     puts "Please enter the name of the genre:"
     input = gets.strip 
     If genre =  Genre.find_by_name(input)
     genre.songs.sort{|a,b| a.name <=> b.name }.each_with_index{|song, index| puts "#{index + 1}. #{song.artist.name} - #{song.name}"}
end

    def play_song
      puts "Which song number would you like to play?"
      input = gets.strip
      If (1..Song.all.length).include?(input.to_i)
      song =Song.all.sort{|a,b| a.name <=> b.name }[input.to_i - 1]
      puts "Playing #{song.name} by #{song.artist.name}"
      
end