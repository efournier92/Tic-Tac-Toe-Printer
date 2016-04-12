# A quick & dirty method
board_a = [
  ['x', 'o', 'x'],
  ['x', nil, 'o'],
  ['x', 'o', nil]
]
board_b = [
  [nil, 'o', 'x'],
  ['x', 'o', nil],
  ['x', 'o', nil]
]
def print_grid(board)
  print "\n"
  board.each_with_index do |space, board_index|
    print " "
    board[board_index].each_with_index do |game_space, row_index|
      if game_space.nil?
        if row_index != 2
        print "  | "
        end
      else
        if row_index != 2
          print "#{board[board_index][row_index]} | "
        else
          print "#{board[board_index][row_index]} "
        end
      end
    end
    if board_index <= 1
      puts "\n___________\n"
    else puts "\n"
    end
  end
end
print_grid(board_a)
puts "\n"
print_grid(board_b)
puts "\n"

# A more stylish method

@x_ascii = [
"    xx     xx    ",
"     xx   xx     ",
"      xx xx      ",
"       xxx       ",
"      xx xx      ",
"     xx   xx     ",
"    xx     xx    "
]

@o_ascii = [
"     OOOOOOO     ",
"    OO     OO    ",
"    OO     OO    ",
"    OO     OO    ",
"    OO     OO    ",
"    OO     OO    ",
"     OOOOOOO     "
]

@empty_ascii = [
"                 ",
"                 ",
"                 ",
"                 ",
"                 ",
"                 ",
"                 ",
]
@left_ascii = " *      "

@right_ascii = "      *"

@horizontal_ascii = " *     --------------------------------------------------———       *"

top_ascii = [
" *******************************************************************  ",
" *******                     TIC-TAC-TOE                     ******* ",
" ******************************************************************* ",
" *                                                                 * ",
" *                                                                 * "
]

bottom_ascii = [
" *                                                                 * ",
" ******************************************************************* ",
]

puts "\n"
puts top_ascii

def print_grid(board)
  spaces = []
  board.each_with_index do |space, board_index|
    board[board_index].each_with_index do |game_space, row_index|
      if game_space.nil?
        spaces[row_index] = @empty_ascii
      elsif game_space == 'x'
        spaces[row_index] = @x_ascii
      else game_space == 'o'
        spaces[row_index] = @o_ascii
      end
    end
      spaces[0].each_with_index do |line, line_index|
        puts "#{@left_ascii}#{spaces[0][line_index]}|#{spaces[1][line_index]}|#{spaces[2][line_index]}#{@right_ascii}"
      end
      unless board_index == 2
        puts @horizontal_ascii
      end
    end
end

board = [
  ['x', 'o', 'x'],
  ['x', nil, 'o'],
  ['x', 'o', nil]
]

print_grid(board)
puts bottom_ascii
