PIECES = ["X", "O"]
spaces = {one:"1",two:"2",three:"3",four:"4",five:"5",six:"6",seven:"7",eight:"8",nine:"9"}

def display_board(spaces)
  puts "   |   |   \n #{spaces[:one]} | #{spaces[:two]} | #{spaces[:three]}\n___|___|___"
  puts "   |   |   \n #{spaces[:four]} | #{spaces[:five]} | #{spaces[:six]}\n___|___|___"
  puts "   |   |   \n #{spaces[:seven]} | #{spaces[:eight]} | #{spaces[:nine]}\n   |   |   "
end

def player_side
  puts "Choose [X] or [O]"
  player_piece = gets.chomp.upcase

  until player_piece.match(/\b(x|o)\b/i)
    puts "You must choose [X]'s or [O]'s"
    player_piece = gets.chomp.upcase
  end
  player_piece
end

puts "Welcome to tic tac toe!"
player = player_side
puts player
display_board(spaces)