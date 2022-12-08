class AddColToTable < ActiveRecord::Migration[7.0]
  def change
    # Adding columns to decide whether the user is an employee or a trainer
    add_column :employees, :isemployee, :boolean, default: true
    add_column :employees, :istrainer, :boolean, default: false

    add_column :trainers, :isemployee, :boolean, default: false
    add_column :trainers, :istrainer, :boolean, default: true
  end
end
# This is new text