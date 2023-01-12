class CreateRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :records do |t|
      t.integer :trainerid
      t.integer :employeeid
      t.string :employee_status
      t.string :prog_title
      t.date :start_date
      t.date :end_date
      t.date :renewal_date

      t.timestamps
    end
  end
end
