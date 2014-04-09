class Reservation < ActiveRecord::Base
  include ReservationValidator
  
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :table_number, presence: true
end
