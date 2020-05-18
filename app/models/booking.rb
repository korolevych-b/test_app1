class Booking < ApplicationRecord
  belongs_to  :table
  belongs_to  :user

  validate :is_valid_time
  
  BOOK_STEP = [30, 60, 90]
  
  private
  
  def is_valid_time
    is_valide_step = ((end_book - start_book) / 1.minutes).in?(BOOK_STEP)
    errors.add(:book, 'not valid time') unless table.restaurant.is_valide_time(self)
    errors.add(:book, 'not valid step') unless is_valide_step
    errors.add(:book, 'time is reserved') if table.is_not_allowed_book(self) 
  end
end