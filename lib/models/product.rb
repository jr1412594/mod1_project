class Product < ActiveRecord::Base
has_many :purchases
has_many :dogs, through: :purchases

end
