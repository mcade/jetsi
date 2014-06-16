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
          		:currencyfor => row[9],
              :wikilink => row[10],
              :commute => row[11],
              :utilities => row[12],
              :internet => row[13],
              :apt => row[14],
              :salary => row[15],
              :dinner => row[16],
              :cities => row[17]
        		)
      		else
        		currency.update_attributes(
          		:monthlychange => row[7],
          		:yearlychange => row[8],
              :commute => row[11],
              :utilities => row[12],
              :internet => row[13],
              :apt => row[14],
              :salary => row[15],
              :dinner => row[16],
              :cities => row[17]
        		)
     		end
     	end

    end

end
