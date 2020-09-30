class Dog < ActiveRecord::Base

    def self.call_by_name(dog_name)
        puts "BARK BARK BARK BARK!!!!!"
         all.find do |dog|
            dog.name == dog_name
         end
    end

end