require "verb/version"
require "rubygems"
require "open-uri"
require "nokogiri"

module Verb
	def self.lookup
		verbs = Array.new 
		doc = Nokogiri::HTML(open("http://www.acme2k.co.uk/Acme/3star%20verbs.htm"))
		doc.css('td > div > font').each do |verb|
			verbs << verb.content
		end
		verbs
	end
end
