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
        \n- help : displays this help message
        \n- list : displays a list of songs you can play
        \n- play : lets you choose a song to play
        \n- exit : exits this program"
end

def list(songs_array)
  songs_array.each_with_index do |title, i|
    puts "#{i+1}. #{title}"
  end
end

def play(songs_array)
  puts "Please enter a song name or number:"
  user_choice  = gets.chomp
    songs_array.each_with_index do |title, i|
  if user_choice == title
    puts "Playing #{title}"
  elsif user_choice.to_i == i + 1
    puts "Playing #{title}"
  else
    puts "Invalid input, please try again"
   end
  end
end

list(songs)
play(songs)
