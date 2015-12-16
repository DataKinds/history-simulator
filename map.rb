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
	#check to see all the files are here and if they are load them
	loadedMaps = {}
	USED_MAPS.each do |mapSymbol| 
		if !File.exist? "#{mapSymbol.to_s}.png"
			die "couldn't find #{mapSymbol.to_s}.png, exiting" 
		else
			loadedMaps[mapSymbol] = ChunkyPNG::Image.from_file("#{mapSymbol.to_s}.png")
		end
	end

	#if all the files are there start parsing the maps
	#first, create all the territory table things
	territoryTable = []
	#parse through the political map, and every time an owned area is found, get data about it
	#from the other maps. political map is the only one in color, the rest of the maps are just
	#greyscale (red channel) that judges how much of something is there. for example, 255 population
	#is a dense urban area, and 0 population is desolate.
	MAP_COORDS[:x].times do |currentX|
		MAP_COORDS[:y].times do |currentY|
			if color == loadedMaps[:political][currentX, currentY]
				territoryTable.push({
										x: currentX, y: currentY,
										population: ChunkyPNG::Color.r(loadedMaps[:population][currentX, currentY]),
										military: ChunkyPNG::Color.r(loadedMaps[:military][currentX, currentY])
									})
			end
		end
	end
	return territoryTable
end

#puts territory(ChunkyPNG::Color.rgb(255,0,0))