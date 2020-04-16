require 'rubygems'
require 'open-uri'
require 'nokogiri'

	page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/doubs.html"))
	city = page.xpath('//a[@class="lientxt"]').text

	url = page.xpath('//a[@class="lientxt"]/@href').text


puts city
puts url


url_array = []
url_pages = 1

while url_pages < url
 	url_page = Nokogiri::HTML(open("#{url}")).count
 	url_pages += 1
 	email_pages << page.xpath("/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]").text
 end

puts email_pages