class Moviee < ApplicationRecord
    has_many :reviews ,  dependent: :destroy 
    
end
