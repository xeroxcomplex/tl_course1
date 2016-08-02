#Players choose rock, paper, scissors
#Copmare choices
#Choose Winner
#Continue Playing

CHOICES = { 'r' => 'rock', 'p' => 'paper', 's' => 'scissors' }

def winning_message(winning_choice)
  case winning_choice
  when 'r'
    puts "Rock crushes scissors!"
  when 'p'
    puts "Paper smothers rock!"
  when 's'
    puts "Scissors shreads paper!"
  end
end

puts "Ready to play...Rock, Paper, Scissors!"

loop do
  begin
    puts "Shoot! [r, p, s]"
    player_choice = gets.chomp.downcase
  end until CHOICES.keys.include?(player_choice)

  computer_choice = CHOICES.keys.sample

  if player_choice == computer_choice
    puts "You both chose #{player_choice}, you tied."
  elsif (player_choice == 'r' && computer_choice == 's') || (player_choice == 'p' && computer_choice == 'r') || (player_choice == 's' && computer_choice == 'p')
    winning_message(player_choice)
    puts "You win!"
  else
    winning_message(computer_choice)
    puts "Dang-it! You lose."
  end

  puts "Play again? [y or n]"
   break unless gets.chomp.downcase == 'y'
end
