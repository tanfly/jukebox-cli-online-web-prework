songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help 
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
  index += 1 
  puts "#{index}. #{song}"
end
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
    songs.each_with_index do |song_name, index|
       if input == song_name 
      puts "Playing #{input}"
      elsif input.to_i == index
      puts "Playing #{songs[index - 1]}"
    else
      puts "Invalid input, please try again"
    end
  end
end


def exit_jukebox
  puts "Goodbye"
end


def run(songs)
  help
  puts "Please enter a command:"
  user_input = gets.chomp
  while user_input != "exit"
    if user_input == "list"
      list(songs)
      elsif user_input == "play"
      play(songs)
      elsif user_input == "help"
      help
    else 
end