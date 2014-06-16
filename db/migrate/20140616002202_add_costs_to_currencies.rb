class AddCostsToCurrencies < ActiveRecord::Migration
  def change
    add_column :currencies, :commute, :decimal
    add_column :currencies, :utilities, :decimal
    add_column :currencies, :internet, :decimal
    add_column :currencies, :apt, :decimal
    add_column :currencies, :salary, :decimal
    add_column :currencies, :dinner, :decimal
  end
end
