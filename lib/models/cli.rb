
class Cli
    attr_accessor :user, :user_choice

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
        @user_choice = nil
        @choice = nil
        @meet_this_one = nil
    end

    def start
        system('clear')
        system("rake db:seed")
        puts "Welcome to the pet store!\n\nWhat is your name?"
        @user = gets.chomp
        # user = User.create(username: username)  this might be useful!
        see_pet
    end

    def see_pet
        system('clear')
        puts("Hello #{@user}, would you like to meet a dog today? Enter Y/N")
        answer = gets.chomp
        if answer == "Y" 
            what_pet
        else
            answer == "N"
            system('clear')
            puts "Thanks for stopping by!"
            exit_cli
            start
            ###Loop needs to be fixed for "N"
        end
    end

    def all_male_dogs
        male_dogs = Dog.select{|dog| dog[:sex] == "Male"}
    end

    def all_female_dogs
       female_dogs = Dog.select{|dog| dog[:sex] == "Female"}
    end


    def what_pet
        system("clear")
        @user_choice = @prompt.select("What kind of dog are you looking for #{@user}?\n\n", Dog.all.pluck(:size).uniq)
    end
        
        def male_female 
            puts "Would you like a male or female dog? Enter M/F"
            answer = gets.chomp
            if answer == "M"
                male_name
            else 
                answer == "F"
                female_name
            end
        end
        
        def male_name
            @choice = all_male_dogs.select {|dog|dog[:size] == @user_choice}.pluck(:name)
        end
        
        def female_name
            @choice = all_female_dogs.select {|dog|dog[:size] == @user_choice}.pluck(:name)  
        end


        def who_would_you_like_to_meet
            system('clear')
            @meet_this_one = @prompt.select("Who would you like to meet?", @choice)
        end

        def dog_specs 
            pick = Dog.find_by(name: @meet_this_one)
            system('clear')
            puts "DOG NAME - #{pick.name}"
            puts "DOG AGE - #{pick.age} Years"
            puts "DOG BREED - #{pick.breed}"
            puts "DOG WEIGHT - #{pick.weight} Pounds"
            puts "DOG LIFE EXPECTANCY - #{pick.life_expectancy} Years"
            puts "DOG PRICE - $#{pick.price}\n\n"
            puts "Would you like to buy this dog? Enter Y/N"
            buy = gets.chomp
            if buy == "Y"
                system("clear")
                puts "Congratulations! #{@meet_this_one} is now a member of your family!\n\n"
                extras
            else
                buy == "N"
                who_would_you_like_to_meet #built out what_pet_2 not entering name.
            
            end
        end

        def total_price(all_products, the_pick)
            the_money = Purchase.all.select {|selected_purchase| selected_purchase.dog.id == the_pick.id}
            .reduce(0) {|acc, selected_purchase| acc + selected_purchase.product.price} + the_pick.price
            binding.pry

        end



        def check_out(access, the_pick)
            all_products = access.map {|selected_product| Product.find_by_name(selected_product)}
            all_products.each {|selected_product| Purchase.create(dog: the_pick, product: selected_product)}
            total_price(all_products, the_pick)
        end
           

        def extras
            options = Product.all.pluck(:name)
            access = @prompt.multi_select("Would you like to buy any accessories?", options)
            # product_select = Product.find_by_name(access)
            the_pick = Dog.call_by_name(@meet_this_one)
            check_out(access, the_pick)
            if access.length > 1
                last = access.last
                broken = access.pop
                broken = access.join(", ")+ ", and " + last
                system('clear')
                puts "Have a great day #{@user}, and we know #{@meet_this_one} will enjoy the #{broken}."
            else
                puts "have a great day #{@user} and we know #{@meet_this_one} will enjoy the #{access[0]}"
                
                Purchase.create(dog: the_pick, product: product_select)
                # binding.pry
                system("rake db:seed")
                
          end
        end

    def exit_cli
        puts "I hope the rest of your day is as plasent as you are."
    end
    
end

