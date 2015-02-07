class CreateTelData < ActiveRecord::Migration
  def change
    create_table :tel_data do |t|
      t.string :longitude
      t.string :latitude

      t.timestamps
    end
  end
end
