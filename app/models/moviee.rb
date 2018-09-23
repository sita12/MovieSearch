class Moviee < ApplicationRecord
    validates_presence_of :title, :plot
    has_many :reviews ,  dependent: :destroy 
    
end
