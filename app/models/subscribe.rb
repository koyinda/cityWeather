class Subscribe < ApplicationRecord
    validates_presence_of :email
    validates_presence_of :location
end
