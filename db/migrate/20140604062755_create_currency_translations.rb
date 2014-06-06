class CreateCurrencyTranslations < ActiveRecord::Migration
  def up
  	Currency.create_translation_table!({
  		:name => :string
  	},	{
  		:migrate_data => true
  	})
  end

  def down
  	Currency.drop_translation_table! :migrate_data => true
  end
end
