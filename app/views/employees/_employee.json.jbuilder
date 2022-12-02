json.extract! employee, :id, :email, :phone, :fname, :lname, :address, :position, :dob, :created_at, :updated_at
json.url employee_url(employee, format: :json)
