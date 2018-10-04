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


# #take in input from CLI, compare input to random number thats been generated, print out statement "You guessed the correct number!" if number guessed correctly or "The computer guessed <number>" if guess incorrect. allow user to exit when exit is inputted 

# describe "Guessing CLI" do

#   context 'user inputs' do
#     it "responds to 'exit'" do
#       expect(self).to receive(:gets).and_return('exit')
#       expect { run_guessing_game }.to output(/Goodbye!/).to_stdout
#     end

#     it "responds to a correct guess" do
#       allow(self).to receive(:rand).and_return(2)
#       expect(self).to receive(:gets).and_return("2")
#       expect(self).to receive(:gets).and_return("exit")
#       expect { run_guessing_game }.to output(/You guessed the correct number!/).to_stdout
#     end

#     it "responds to an incorrect guess" do
#       allow(self).to receive(:rand).and_return(5)
#       expect(self).to receive(:gets).and_return("2")
#       expect(self).to receive(:gets).and_return("exit")
#       expect { run_guessing_game }.to output(/The computer guessed 5./).to_stdout
#     end
#   end

#   it 'starts the script with the run_guessing_game method' do
#     allow(self).to receive(:gets).and_return('exit')
#     expect { run_guessing_game }.to output(/Guess a number between 1 and 6./).to_stdout
#   end
# end
