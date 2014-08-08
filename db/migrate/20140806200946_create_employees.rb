class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.date :date
      t.string :title
      t.integer :hours_worked
      t.string :shift_start_time

      t.timestamps
    end
  end
end
