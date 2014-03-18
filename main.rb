#!/usr/bin/ruby

puts "This is tic-tac-toe, by Tom Mowad."

board = [' '] * 9

puts board.length, board.class

turn = 'X'

def draw_board(board)
  puts "#{board[0]} | #{board[1]} | #{board[2]}"
  puts "--+---+--"
  puts "#{board[3]} | #{board[4]} | #{board[5]}"
  puts "--+---+--"
  puts "#{board[6]} | #{board[7]} | #{board[8]}"
end

def is_invalid(x)
  x < 0 || x > 8
end

def is_occupied(board, x)
  board[x] != ' '
end

def get_move(board)
  x = -1
  begin
    x = gets.to_i
  end while is_invalid(x) || is_occupied(board, x)
  puts "choosing #{x} and is_invalid = #{is_invalid(x)} and is_occupied = #{is_occupied(board, x)}"
  return x
end

while (true) do
  draw_board(board)
  puts "It is #{turn}'s turn."
  move = get_move(board)
  board[move] = turn
  turn = (turn == 'X') ? 'O' : 'X'
end
