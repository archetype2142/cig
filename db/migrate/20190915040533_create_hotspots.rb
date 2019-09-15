class CreateHotspots < ActiveRecord::Migration[6.0]
  def change
    create_table :hotspots do |t|
      t.string :lat
      t.string :long
    end
  end
end
