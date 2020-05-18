class Restaurant < ApplicationRecord
  has_many :tables
  
  def is_valide_time(book)
    start_h, end_h = working_hours.split('-')
    DateTime.parse(start_h) <= book.start_book && book.end_book <= DateTime.parse(end_h)
  end
end