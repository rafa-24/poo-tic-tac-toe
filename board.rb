class Board 
   
  attr_reader :rows, :columns, :grid

  def initialize(rows = 3, columns = 3)
    @rows = rows
    @columns = columns
    @grid = Array.new(rows) { Array.new(columns, " ") }
  end

  def display
    puts "Tablero de #{rows}x#{columns}"
    puts "-" * (columns * 4 - 1) 

    @grid.each_with_index do |row, index|
      puts row.map { |cell| " #{cell} " }.join('|')
      puts "-" * (columns * 4 - 1) unless index == rows - 1
    end
  end

  def write_cell(row, column, symbol)
    if @grid[row][column] == ' '
      @grid[row][column] = symbol
      self.display
      true
    else
      puts 'Esa casilla ya esta ocupada. Intente en otra'
      false
    end
  end

  def winner?
    @grid.each do |row|
      return row[0] if row.all? { |cell| cell == row[0] && cell != ' ' }
    end

    (0..@columns).each do |col|
      column = @grid.map { |row| row[col] }
      return column[0] if column.all? { |cell| cell == column[0] && column != ' ' }
    end

    if @rows == @columns
      diagonal1 = (0...@rows).map { |i| @grid[i][i] }
      diagonal2 = (0...@rows).map { |i| @grid[i][@rows - 1 - i] }
      return diagonal1[0] if diagonal1.all? { |cell| cell == diagonal1[0] && cell != ' ' }
      return diagonal2[0] if diagonal2.all? { |cell| cell == diagonal2[0] && cell != ' ' }
    end
  end
end