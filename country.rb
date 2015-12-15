require "set"

class Country
	def initialize(n, t)
		@name = n
		@reputation
		@gdp
		@population
		@power
		@nuke
		@tech
		@happiness
		@orgs = Set.new
		@wars = Set.new
		@tags = Set.new t
	end

	attr_accessor :name
	attr_accessor :reputation
	attr_accessor :gdp
	attr_accessor :population
	attr_accessor :power
	attr_accessor :nuke
	attr_accessor :tech
	attr_accessor :happiness
	attr_accessor :orgs
	attr_accessor :wars
	attr_accessor :tags
end
