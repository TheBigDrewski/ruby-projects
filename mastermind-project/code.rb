class Code
    attr_accessor :code

    @colors = ["B", "G", "O", "P", "R", "Y"]

    def initialize
        for i in 0..3 do @code.push(@colors[rand(0..6)])
    end
end