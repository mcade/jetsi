require 'csv'

class Currency < ActiveRecord::Base
  translates :name
	
	def self.import(file)
    	CSV.foreach(file.path, headers: true) do |row|
      		currency = Currency.find_by(keyid: row[0])
      		if currency.nil?
        		Currency.create!(
          		:keyid => row[0],
              :name => row[1],
              :currencyname => row[2],
          		:region => row[3],
              :livingcost => row[4],
              :bmi => row[5],
          		:weeklychange => row[6],
          		:monthlychange => row[7],
          		:yearlychange => row[8],
          		:currencyfor => row[9]
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
