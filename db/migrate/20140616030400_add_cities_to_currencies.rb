class AddCitiesToCurrencies < ActiveRecord::Migration
  def change
    add_column :currencies, :cities, :string
  end
end
