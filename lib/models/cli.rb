
class Cli
    attr_accessor :user

    def tty_prompt
        TTY::Prompt.new(
            symbols: { marker: '>'},
            active_color: :cyan,
            help_color: :bright_cyan
        )
    end

    def initialize user = nil
        @user = nil
        @prompt = tty_prompt
    end

    def start
        system('clear')
        puts "Welcome to the pet store!\n\nWhat is your name?"
        @user = gets.chomp
        # user = User.create(username: username)  this might be useful!
        see_pet
    end

    def see_pet
        system('clear')
        puts("Hello #{@user}, would you like to meet a dog today y/n")
        answer = gets.chomp
        if answer == "y" 
            what_pet
        else
            system('clear')
            puts "Thanks for stopping by!"
        end
    end

    def what_pet
        system("clear")
        user_size = @prompt.select("Hello #{@user}, what kind of dog are you looking for?\n\n", trait_choices)
    end

    
    
    
    
    def trait_choices

        {
            "Large": ->{get_large_dog_type},
            "Medium": ->{get_medium_dog_type},
            "Small": ->{get_small_dog_type}
        }
    end
    
    
    

        



    
    def get_large_dog_type
        Dog.all.select {|dog| dog.size == 'Large'}
        .map {|l_dogs| puts l_dogs.name }
    end

    def get_medium_dog_type
        Dog.all.select {|dog|dog[:size] == 'Medium'}
        .map {|m_dogs| puts m_dogs.name }
    end
    def get_small_dog_type
        Dog.all.select {|dog|dog[:size] == 'Small'}
        .map {|s_dogs| puts s_dogs.name }
    end
    
    # def male_or_female
    #     system('clear')
    #     user_sex = @prompt.select("Are you looking for a male or female?\n\n", sex_choices)
    # end
    
    # def sex_choices
    #     %w(Male Female)
    
    def exit_cli
        
    end
    
end

# pancake_choices = Pancake.all.pluck(:name)
# Chosen_pancake_name = prompt.select('Choose your pancake?', pancake_choices)
