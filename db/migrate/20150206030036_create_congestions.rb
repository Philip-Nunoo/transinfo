class CreateCongestions < ActiveRecord::Migration
  def change
    create_table :congestions do |t|
      t.string :from
      t.string :to
      t.float :longitude
      t.float :latitude
      t.string :time
      t.float :level

      t.timestamps
    end
  end
end
