class CreateCurrencies < ActiveRecord::Migration
  def change
    create_table :currencies do |t|
      t.string :name
      t.string :region
      t.decimal :weeklychange
      t.decimal :monthlychange
      t.decimal :yearlychange

      t.timestamps
    end
  end
end
