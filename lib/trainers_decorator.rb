# Decorator pattern to extend functionality for trainers
class TrainersController
    def foo = "foo"
end
# Provide the date in which they started working for the company
module Company_history
    def date = "date"
end
# List any previous employees in which they mentored
module Mentor_history
    def name = "text"
end

trainers = TrainersController.new
trainers.extend(Company_history)
trainers.extend(Mentor_history)