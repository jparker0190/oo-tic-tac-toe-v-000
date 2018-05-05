class TicTacToe
  def initialize(board = nil)
    @board = board || Array.new(9, " ")
  end

  WIN_COMBINATIONS = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [2,4,6]
  ]

  def display_board(board)
    board = [" "," "," "," "," "," "," "," "," ",] 
  end

  def input_to_index(user_input)
    user_input.to_i - 1
  end

  def move(board, index, current_player)
    @board[index] = current_player
  end

  def position_taken?(board, location)
  @board[location] != " " && @board[location] != ""
  end

  def valid_move?(board, index)
    index.between?(0,8) && !position_taken?(board, index)
  end

  def turn
      display_board
      puts "Please enter 1-9:"
      input = gets.strip
    if !valid_move?(input)
      turn
  end
      move(input, current_player)
      display_board
  end

  def turn_count
      number_of_turns = 0
      @board.each do |space|
    if space == "X" || space == "O"
        number_of_turns += 1
    end

  def current_player(board)
      num = turn_count(board)
    if num % 2 == 0
      return "X"
    else
      return "O"
    end
  end

def won?(board)
    WIN_COMBINATIONS.detect do |win_combo|
    if (board[win_combo[0]]) == "X" && (board[win_combo[1]]) == "X" && (board[win_combo[2]]) == "X"
    return win_combo
    elsif (board[win_combo[0]]) == "O" && (board[win_combo[1]]) == "O" && (board[win_combo[2]]) == "O"
    return win_combo
    end
      false
  end
  end
end
def full?(board)
  !board.any? { |x| x == " " }
end

def draw?(board)
  !(won?(board)) && (full?(board))
end

def over?(board)
  if full?(board) || won?(board) || draw?(board)
  return true
  else
    return false
  end
end

def winner(board)
  if winning_combo = won?(board)
    board[winning_combo.first]
  else
    return nil
  end
end

def play
  while over? == false
    turn(board)
  end
  if won?
    puts "Congratulations #{winner}!"
  elsif draw?
    puts "Cat's Game!"
  end
end
end
end
