class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :address
      t.string :suburb
      t.string :state
      t.string :country
      t.string :postcode
      t.float :latitude
      t.float :longitude
      t.references :locationable, polymorphic: true

      t.timestamps
    end
  end
end
