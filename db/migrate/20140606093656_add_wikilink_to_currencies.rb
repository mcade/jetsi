class AddWikilinkToCurrencies < ActiveRecord::Migration
  def change
    add_column :currencies, :wikilink, :string
  end
end
