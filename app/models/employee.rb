class Employee < ApplicationRecord
    validates :fname,  
            :length  => {:minimum => 2, :maximum => 80, :message => "invalid length"},
            :presence => {:message => "can't be empty" }
    validates :lname,  
            :length  => {:minimum => 2, :maximum => 80, :message => "invalid length"},
            :presence => {:message => "can't be empty" }
end
