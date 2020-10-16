def run_guessing_game
  random_number = rand(1..6).to_s
  puts "Guess a number between 1 and 6."
  user_input = gets.chomp 
  
  if user_input != "exit"
    if user_input == random_number
      puts "You guessed the correct number!"
      run_guessing_game
    elsif user_input != random_number
      puts "The computer guessed #{random_number}."
      run_guessing_game
    end 
  end 
  puts "Goodbye!"
end 
