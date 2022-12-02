class CreateTrainers < ActiveRecord::Migration[7.0]
  def change
    create_table :trainers do |t|
      t.string :email
      t.integer :phone
      t.string :fname
      t.string :lname
      t.text :address
      t.string :position
      t.date :dob

      t.timestamps
    end
  end
end
