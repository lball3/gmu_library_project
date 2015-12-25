class CreateBookFs < ActiveRecord::Migration
  def change
    create_table :book_fs do |t|
    

      t.timestamps null: false
    end
  end
end
