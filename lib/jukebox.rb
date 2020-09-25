require 'pry'
# Add your code here
#def say_hello(name)
#"Hi #{name}!"
#end
#puts "Enter your name:"
#users_name = gets.strip
#puts say_hello(users_name)

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
  # output instructions on how to use the jukebox
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  #output list of songs that can play
  songs.each_with_index do |element, index|
    puts "#{index + 1}. #{element}"
  end 
end

def play(songs)
  #ask user to input song name OR track number
  #output appropriate song name
  puts "Please enter a song name or number:"
  user_input = gets.strip
  i = 0 
  song_number = (1..songs.length).to_a
  if (1..9).to_a.include?(user_input.to_i)
    puts "Playing #{songs[user_input.to_i - 1]}"
  elsif songs.include?(user_input)
    puts "Playing #{user_input}"
  else 
    puts "Invalid input, please try again"
  end 
end 

def exit_jukebox 
  #say goodbye
  #program should shut down
  puts "Goodbye"
end 

def run(songs)
  #calls all methods to implement program
  puts "Please enter a command:"
  command = gets.strip 
  case command
    when "help"
		  help
	when "list"
		list(songs)
	when "play"
		play(songs)
  when "exit"
		exit_jukebox
	else 
	  help 
	end
end 
    