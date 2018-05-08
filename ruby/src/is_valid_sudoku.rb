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
  # Checks validity amongst rows, colums, and the current 3x3 square
  board.each.with_index do |row, row_index|
    rows[row_index] = {}

    row.each.with_index do |val, col_index|
      # Ignore blank values
      next if val == "."

      square_index = compute_square_index(row_index, col_index)
      square[square_index] ||= {}
      cols[col_index] ||= {}

      # Return if a value has been used twice in the row, column, or current 3x3 square
      return false if rows[row_index][val] || cols[col_index][val] || square[square_index][val]

      # This value can not be reused in the row, column, or current 3x3 square
      rows[row_index][val] = true
      cols[col_index][val] = true
      square[square_index][val] = true
    end
  end

  true
end

def compute_square_index(row_index, col_index)
  3 * (row_index / 3).floor + (col_index / 3).floor
end
