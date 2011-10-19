require "verb/version"
require "rubygems"
require "open-uri"
require "nokogiri"

module Verb
	def self.lookup_acme_most_common
		verbs = Array.new 
		doc = Nokogiri::HTML(open("http://www.acme2k.co.uk/Acme/3star%20verbs.htm"))
		doc.css('td > div > font').each do |verb|
			verbs << verb.content
		end
		verbs
	end

	def self.lookup_englishclub_regular
		verbs = Array.new
		doc = Nokogiri::HTML(open("http://www.englishclub.com/vocabulary/regular-verbs-list.htm"))
		doc.css('li').each do |verb|
			verbs << verb.content
		end
		verbs
	end


	# should split out into its own gem for proper names (since these aren't verbs)

	def self.lookup_proper_name
		names = Array.new
		pages = ('a'..'z').to_a # blank and 1..16 => eng.php, eng1.php .. en16.php

		pages.each do |p|
			puts "URL => http://www.behindthename.com/nm/#{p}.php"
			doc = Nokogiri::HTML(open("http://www.behindthename.com/nm/#{p}.php"))
				doc.css('p > b > a').each do |name|
				names << name.content
			end
		end
		names
	end


	def self.lookup_grammar
		# http://grammar.ccc.commnet.edu/grammar/verblist.htm
		verbs = Array.new
	
		verbs << "rap"
		verbs << "wrap"
		verbs << "cron"
		verbs << "con"
		verbs << "church"
		verbs << "learn"
		verbs << "recall"
		verbs << "memorize"
		verbs << "ho"
		verbs << "bill"
		verbs << "build"

		verbs
	end
end
