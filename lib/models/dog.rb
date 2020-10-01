class Dog < ActiveRecord::Base
    has_many :purchases
    has_many :products, through: :purchases
    def self.call_by_name(dog_name)
        # puts "BARK BARK BARK BARK!!!!!"
         all.find do |dog|
            dog.name == dog_name
         end
    end

end