class Board
attr_reader :size

    def initialize(n)
        @grid = Array.new(n) { Array.new(n, :N)}
        @size = n * n
    end

    def [](position)
        row, col = position
        @grid[row][col]
    end

    def []=(position, val)
        row, col = position
        @grid[row][col] = val
    end

    def num_ships
        @grid.flatten.count {|ele| ele == :S}
    end

    def attack(position)
        if self[position] == :S
            self[position] = :H
            puts "you sunk my battleship"
            return true
        else  
            self[position] = :X
            return false
        end
    end


    def place_random_ships
        total_ships = @size *0.25
        
        while self.num_ships < total_ships
        rand_row = rand(0...@grid.length)
        rand_col= rand(0...@grid.length)
        pos = [rand_row, rand_col]
        self[pos] = :S
        end
    end

    def hidden_ships_grid
        

end



