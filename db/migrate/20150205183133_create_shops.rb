class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.string :description
      t.string :tel
      t.float :latitude
      t.float :longitude
      
      t.timestamps
    end
  end
end
