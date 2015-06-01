class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :venue_id
      t.integer :general_rating
      t.boolean :parking_lot
      t.boolean :parking_street
      t.boolean :parking_valet
      t.string :dish_name
      t.integer :dish_rating
      t.integer :atmosphere_rating
      t.text :dish_comments
      t.text :atmosphere_comments
      t.boolean :sit_down
      t.float :average_per_person_price
      t.text :general_comments
      t.boolean :price_with_drinks
      t.integer :user_id

      t.timestamps

    end
  end
end
