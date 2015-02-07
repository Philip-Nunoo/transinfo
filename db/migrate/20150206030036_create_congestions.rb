class CreateCongestions < ActiveRecord::Migration
  def change
    create_table :congestions do |t|
      t.string :place
      t.float :longitude
      t.float :latitude
      t.string :time
      t.float :out_level
      t.float :in_level

      t.timestamps
    end
  end
end
