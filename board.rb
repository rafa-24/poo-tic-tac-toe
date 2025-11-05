class Board 
  attr_accessor :rows, :columns
  attr_reader :grid

  def initialize(rows, columns)
    @rows = rows
    @columns = columns
    @grid = Array.new(rows) { Array.new(columns, " ") }
  end

  def create_board 
    puts "Tablero de #{rows}x#{columns}"
    puts "-" * (columns * 4 - 1)  # línea superior

    @grid.each_with_index do |row, index|
      puts row.map { |cell| " #{cell} " }.join('|')
      puts "-" * (columns * 4 - 1) unless index == rows - 1
    end
  end

  def write_board(row, column, symbol)
    if @grid[row][column] == ' '
      @grid[row][column] = symbol
      self.create_board
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

    nil
  end

end