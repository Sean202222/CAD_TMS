json.extract! record, :id, :trainerid, :employeeid, :employee_status, :prog_title, :start_date, :end_date, :renewal_date, :created_at, :updated_at
json.url record_url(record, format: :json)
