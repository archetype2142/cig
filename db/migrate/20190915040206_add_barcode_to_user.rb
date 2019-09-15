class AddBarcodeToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :barcode, :string
  end
end
