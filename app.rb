# A quick & dirty method ####################################################
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
def print_simple(board)
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
print_simple(board_a)
puts "\n"
print_simple(board_b)
puts "\n"

# A more stylish approach ###################################################

X = [
"    xx     xx    ",
"     xx   xx     ",
"      xx xx      ",
"       xxx       ",
"      xx xx      ",
"     xx   xx     ",
"    xx     xx    "
]

O = [
"     OOOOOOO     ",
"    OO     OO    ",
"    OO     OO    ",
"    OO     OO    ",
"    OO     OO    ",
"    OO     OO    ",
"     OOOOOOO     "
]

EMPTY = [
"                 ",
"                 ",
"                 ",
"                 ",
"                 ",
"                 ",
"                 ",
]
LEFT = " *      "

RIGHT = "      *"

HORIZ = " *     --------------------------------------------------———       *"

TOP = [
" *******************************************************************  ",
" *******                     TIC-TAC-TOE                     ******* ",
" ******************************************************************* ",
" *                                                                 * ",
" *                                                                 * "
]

BOTT = [
" *                                                                 * ",
" ******************************************************************* ",
]

puts "\n"
puts TOP

def print_stylish(board)
  spaces = []
  board.each_with_index do |space, board_index|
    board[board_index].each_with_index do |game_space, row_index|
      if game_space.nil?
        spaces[row_index] = EMPTY
      elsif game_space == 'x'
        spaces[row_index] = X
      else
        spaces[row_index] = O
      end
    end
      spaces[0].each_with_index do |line, line_index|
        print "#{LEFT}#{spaces[0][line_index]}|#{spaces[1][line_index]}"
        puts  "|#{spaces[2][line_index]}#{RIGHT}"
      end
      unless board_index == 2
        puts HORIZ
      end
    end
end

# App Runner ################################################################

board = [
  ['x', 'o', 'x'],
  ['x', nil, 'o'],
  ['x', 'o', nil]
]

print_stylish(board)
puts BOTT
