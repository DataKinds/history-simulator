require_relative "country"

all_countries = []

canada = Country.new("Canada", [:democracy, :liberal, :capitalist, :northern_america, :pacifist])
canada.orgs << :nato << :norad
canada.gdp = 1785387

usa = Country.new("United States", [:democracy, :conservative, :capitalist, :northern_america, :militaristic])
usa.orgs << :nato << :norad
usa.gdp = 17348075
