class Employee < ActiveRecord::Base
  validates_presence_of :firstname, :lastname, :email, :date, :shift_start_time, :hours_worked, :title
end
