require 'rubygems'
require 'open-uri'
require 'nokogiri'

filename = "ruby.html"
doc = Nokogiri::HTML(open(filename),nil,"utf-8")
doc.css("a").each do |a|
  url = URI.parse(a["href"])
  if url.host
    puts "#{a.text}:#{a["href"]}"
  end
end
