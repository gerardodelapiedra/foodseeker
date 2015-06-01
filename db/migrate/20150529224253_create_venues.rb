class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :address
      t.string :main_cuisine
      t.string :name

      t.timestamps

    end
  end
end
