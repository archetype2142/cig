class AddConcentrationToHotspot < ActiveRecord::Migration[6.0]
  def change
    add_column :hotspots, :concentration, :integer, default: 0
  end
end
