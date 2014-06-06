class AddCurrencyforToCurrencies < ActiveRecord::Migration
  def change
    add_column :currencies, :currencyfor, :string
  end
end
