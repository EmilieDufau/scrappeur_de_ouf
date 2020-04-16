require 'rubygems'
require 'open-uri'
require 'nokogiri'

	doc = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))	
	crypto = doc.xpath("/html/body/div/div/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr").count

  
 crypto_name = 1
 crypto_name_array = []

 while crypto_name < crypto
 	crypto_name_array << doc.xpath("/html/body/div/div/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr[#{crypto_name}]/td[3]").text
 	crypto_name += 1
 end


 crypto_price = 1
 crypto_price_array = []

 while crypto_price < crypto
 	crypto_price_array << doc.xpath("/html/body/div/div/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr[#{crypto_price}]/td[5]").text
 	crypto_price += 1
 end


 final_array = []
final_array << Hash[crypto_name_array.zip(crypto_price_array)]
puts final_array


