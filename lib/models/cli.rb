class Cli
    attr_accessor :user

    def initialize user = nil
        @user = nil
    end

    def start
        puts "Welcome to the pet store!, what is your name?"
        @user = gets.chomp
        system("clear")
        puts "Hello #{@user}, what kind of pet are you looking for?"
    end
    
end