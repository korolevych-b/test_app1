class Table < ApplicationRecord
  belongs_to :restaurant, foreign_key: 'restaurant_id'
  has_many   :bookings
  
  def is_not_allowed_book(book)
    bookings.select { |b| book.start_book < b.end_book || book.end_book < b.start_book }.present?
  end
end