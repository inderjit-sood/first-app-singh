#require 'httparty'
#require 'pp'
class Recipe
	include HTTParty
	default_options.update(verify: false) # Turn off SSL verification
	key_value = ENV['FOOD2FORK_KEY'] || '06886fa273c4d06d00dd9f908ca5dcd3'
	hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'
	base_uri "http://#{hostport}/api"
	default_params key:key_value #,q:'chocolate'

	format :json

	def self.for term
		#default_params key:'06886fa273c4d06d00dd9f908ca5dcd3'
	#	get("search",query: { q:term })
		get("/search",query:{q:term})
	end
end

#pp Recipe.for('chocolate')["recipes"][0]