require 'rss'
require 'open-uri'

class AsyncRequestsService

	def nokogiri_parser
		Feed.all.each do |feed|
			doc= Nokogiri::XML(open(feed.url.strip))
			doc.css('item').each do |data|
  			title = data.at("title").text
  			link = data.at("link").text
  			pubDate = data.at("pubDate").text
  			local_entry = feed.entries.where(title: title).first_or_initialize
  			local_entry.update_attributes(content: nil, author: nil, url: link, published: pubDate)
  			puts "\n\ntitle: #{ title } \nlink: #{ link } \npublished: #{pubDate}"
			end
		end
	end

end