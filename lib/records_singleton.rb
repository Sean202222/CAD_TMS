# Singleton pattern included for records
class RecordsController
    attr_reader :employeeid, :trainerid
    private_class_method :new
# Ensures that the same trainer id and/or employee id cannot be included twice in the database
    def initialize(employeeid)
        @employeeid = employeeid
    end

    def self.instance(employeeid)
        @instance ||= new(employeeid)
    end

    def initialize(trainerid)
        @trainerid = trainerid
    end

    def self.instance(trainerid)
        @instance ||= new(trainerid)
    end
end