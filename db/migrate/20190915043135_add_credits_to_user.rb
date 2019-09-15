class AddCreditsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :credits, :integer
    add_column :users, :savings, :string
  end
end
