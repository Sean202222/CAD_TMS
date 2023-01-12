class Trainer < ApplicationRecord
validates :fname,  
        :length  => {:minimum => 2, :maximum => 80, :message => "invalid length"},
        :presence => {:message => "can't be empty" }
        
validates :lname,  
        :length  => {:minimum => 2, :maximum => 80, :message => "invalid length"},
        :presence => {:message => "can't be empty" }

    # One to many relationship between trainer and record models
    # has_many :records
end
