class Employee < ActiveRecord::Base
  validates_presence_of :first_name, :last_name, :email, :date, :shift_start_time, :hours_worked, :title
end
