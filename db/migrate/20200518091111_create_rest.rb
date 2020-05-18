class CreateRest < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :number
      t.timestamps
    end
    
    create_table :tables do |t|
      t.integer :restaurant_id
      t.string :number
      t.timestamps
    end
    
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :working_hours
      t.timestamps
    end
    
    create_table :bookings do |t|
      t.belongs_to :user
      t.belongs_to :table
      t.datetime :start_book
      t.datetime :end_book
      t.timestamps
    end
  end
end
