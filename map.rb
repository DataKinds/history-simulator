require "chunky_png"
require "FileUtils"

def die(error)
	puts error
	Kernel.exit -1
end

USED_MAPS = [:political, :population, :military]
MAP_COORDS = {x: 180, y: 90}

#accepts a ChunkyPNG color which represents the color of the requested territory
def territory(color)
	#check to see all the files are here
	USED_MAPS.each do |map| 
		if !File.exist? "#{map.to_s}.png"
			die "couldn't find #{map.to_s}.png, exiting" 
		end
	end

	#if all the files are there start parsing the maps
	territoryTable = {}
	USED_MAPS.each do |map|
		territoryTable[map] = []
		mapFile = ChunkyPNG::Image.from_file("#{map.to_s}.png")
		#parse the political map
		if map == :political
			MAP_COORDS[:x].times do |currentX|
				MAP_COORDS[:y].times do |currentY|
					if color == mapFile[currentX, currentY]
						territoryTable[:political].push({x: currentX, y: currentY})
					end
				end
			end
		#look at the pixels from the political map and parse the population of them
		elsif map == :population
		#look at the pixels from the political map and parse the military prescence of them
		elsif map == :military
		end
	end
	return territoryTable
end

