class Purchase < ActiveRecord::Base
    belongs_to :dog
    belongs_to :product
end