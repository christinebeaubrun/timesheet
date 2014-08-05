class Timesheet
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :name, :email, :start_time, :position, :work_week,
  :day_worked, :hours_worked, :total_hours_worked, :shift_pay,
  :pay_rate, :grand_total

  validates_presence_of :name, length: { minium: 2 }
  validates_format_of :email, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i
  validates_presence_of :start_time, :position, :work_week
  has_many :day_worked
  validates :hours_worked, :total_hours_worked, :shift_pay, :pay_rate, :grand_total, numericality: true

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end

end