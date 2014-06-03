class AddCurrencynameToCurrencies < ActiveRecord::Migration
  def change
    add_column :currencies, :currencyname, :string
  end
end
