
require_relative 'config'
class Game
            
    HREN_VAM = "хрен вам".freeze    
    GUD = "введите правильное число".freeze
    DA = "верно".freeze
    def vibor
        loop do
            puts "выбери тип игры E - Easy H - Hard"        
            @c = gets.chomp
            puts @c.inspect
            if @c == "E" || @c == "H"
                znach
                break
            end
        end
    end
    
    def initialize(name)
        puts name
        @config = Config.new.read_config
        init_range
    end
    
    def znach
        @a = rand(@min..@max)
        run
    end

    def run
        puts @a.inspect
        loop do        
            b = read_number("введите число от #{@min} до #{@max}")
            if @a == b.to_i 
                lox DA
                break
            elsif
                @c =="H"
                lox HREN_VAM
                znach
                break
            else
                lox HREN_VAM
            end
        end
    end

    private   
    
    def init_range
        @min = @config["min"]
        @max = @config["max"]
    end
    
    def read_number(message)
        loop do
            puts message
            number = gets
            return number.to_i if (number =~ /^\d+$/) != nil
            puts GUD
        end    
    end 
   
    def lox(qw)
        puts ">>>>> #{qw}"
    end
end

Game.new("угадай число").vibor