# Determine if a 9x9 Sudoku board is valid. Only the filled cells need to be
# validated.
#
# @param {Character[][]} board
# @return {Boolean}
def is_valid_sudoku(board)
  rows = {}
  cols = {}
  square = {}

  # Runtime: O(n^2)
  #
  # Checks validity amongst rows and colums
  board.each.with_index do |row, row_index|
    rows[row_index] = {}

    row.each.with_index do |val, col_index|
      square_index = compute_square_index(row_index, col_index)

      square[square_index] ||= {}
      cols[col_index] ||= {}

      next if val == "."
      return false if rows[row_index][val] || cols[col_index][val] ||
                      square[square_index][val]

      rows[row_index][val] = true
      cols[col_index][val] = true
      square[square_index][val] = true
    end
  end

  true
end

def compute_square_index(row_index, col_index)
  case row_index
  when 0..2
    case col_index
    when 0..2
      0
    when 3..5
      1
    when 6..8
      2
    end
  when 3..5
    case col_index
    when 0..2
      3
    when 3..5
      4
    when 6..8
      5
    end
  when 6..8
    case col_index
    when 0..2
      6
    when 3..5
      7
    when 6..8
      8
    end
  end
end
