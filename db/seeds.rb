# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Feed.create([{name: 'BBC world news', url: 'http://feeds.bbci.co.uk/news/world/rss.xml'},
 {name: 'Times of India - Pune', url: 'https://timesofindia.indiatimes.com/rssfeeds/-2128821991.cms'} ])