class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
        t.integer :id
        t.date :reserved_on
        t.date :due_on
        t.integer :user_id, foreign_key: true
        t.integer :book_id, foreign_key: true
        t.datetime :created_at
        t.datetime :updated_at

      t.timestamps null: false
    end
  end
end
