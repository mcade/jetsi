require 'csv'

class Currency < ActiveRecord::Base
	
	def self.import(file)
    	CSV.foreach(file.path, headers: true) do |row|
      		currency = Currency.find_by(name: row[0])
      		if currency.nil?
        		Currency.create!(
          		:name => row[0],
          		:region => row[1],
          		:weeklychange => row[2],
          		:monthlychange => row[3],
          		:yearlychange => row[4],
          		:currencyfor => row[5]
        		)
      		else
        		currency.update_attributes(
          		:weeklychange => row[2],
          		:monthlychange => row[3],
          		:yearlychange => row[4]
        		)
     		end
     	end

    end

end
