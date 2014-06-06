class AddBmiandcolToCurrencies < ActiveRecord::Migration
  def change
    add_column :currencies, :bmi, :decimal
    add_column :currencies, :livingcost, :string
  end
end
