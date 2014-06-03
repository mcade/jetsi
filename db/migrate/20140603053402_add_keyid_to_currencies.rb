class AddKeyidToCurrencies < ActiveRecord::Migration
  def change
    add_column :currencies, :keyid, :integer
  end
end
