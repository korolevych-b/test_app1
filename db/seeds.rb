restaurant = Restaurant.create(name: 'Star',  address: 'Shevchenka st 1', working_hours: '10:00-23:00')
table = Table.create(number: '1a', restaurant: Restaurant.first)
user = User.create(name: 'Bohdan', number: '12133213232')
book = Booking.create(user: User.first, table: Table.first, start_book: DateTime.parse('10:00'), end_book: DateTime.parse('10:30'))

