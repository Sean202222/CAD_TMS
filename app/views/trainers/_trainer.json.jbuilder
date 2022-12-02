json.extract! trainer, :id, :email, :phone, :fname, :lname, :address, :position, :dob, :created_at, :updated_at
json.url trainer_url(trainer, format: :json)
