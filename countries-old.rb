require_relative "country"

countries = {}

countries[:afghanistan] = Country.new("Afghanistan", [:authoritarian, :reactionary, :sunni, :capitalist, :militarist, :hot, :arid, :southern_asia, :unstable])
countries[:afghanistan].gdp = 20444
countries[:afghanistan].population = 26023

countries[:albania] = Country.new("Albania", [:hybrid, :conservative, :sunni, :capitalist, :pacifist, :southern_europe])
countries[:albania].gdp = 13276
countries[:albania].population = 2893

countries[:algeria] = Country.new("Algeria", [:authoritarian, :conservative, :sunni, :capitalist, :peaceful, :hot, :dry, :northern_africa])
countries[:algeria].gdp = 213518
countries[:algeria].population = 35470
countries[:algeria].orgs << :au << :arab_league

countries[:angola] = Country.new("Angola", [:authoritarian, :conservative, :catholic, :communist, :jingoist, :middle_africa, :hot, :unstable])
countries[:angola].gdp = 129326
countries[:angola].population = 19080
countries[:angola].orgs << :au

countries[:argentina] = Country.new("Argentina", [:flawed, :conservative, :catholic, :socialist, :pacifist, :south_america])
countries[:argentina].gdp =  543061
countries[:argentina].population = 40410
countries[:argentina].orgs << :usan

countries[:armenia] = Country.new("Armenia", [:hybrid, :conservative, :orthodox, :capitalist, :militarist, :central_asia])
countries[:armenia].gdp = 11644
countries[:armenia].population = 3090
countries[:armenia].orgs << :csto

countries[:australia] = Country.new("Australia", [:democracy, :liberal, :protestant, :capitalist, :peaceful, :hot, :dry, :australia_nz])
countries[:australia].gdp = 1442722
countries[:australia].population = 22270
countries[:australia].orgs << :five_eyes << :commonwealth

countries[:austria] = Country.new("Austria", [:democracy, :liberal, :catholic, :socialist, :peaceful, :western_europe])
countries[:austria].gdp = 437582
countries[:austria].population = 8390
countries[:austria].orgs << :eu

countries[:azerbaijan] = Country.new("Azerbaijan", [:authoritarian, :conservative, :shia, :socialist, :jingoist, :central_asia])
countries[:azerbaijan].gdp = 74145
countries[:azerbaijan].population = 0

countries[:canada] = Country.new("Canada", [:democracy, :liberal, :protestant, :capitalist, :pacifist, :cold, :northern_america])
countries[:canada].orgs << :nato << :five_eyes << :commonwealth
countries[:canada].gdp = 1785387

countries[:usa] = Country.new("United States", [:democracy, :conservative, :protestant, :capitalist, :militarist, :northern_america])
countries[:usa].orgs << :nato << :five_eyes
countries[:usa].gdp = 17348075



puts countries[:usa].name
puts
countries.each do |k, a|
    puts countries[k].name
end
