require "chunky_png"
require "FileUtils"

die = ->(error){puts error; Kernel.exit -1}

USED_MAPS = [:political, :population, :military]
def territory(color)
	#check to see all the files are here
	USED_MAPS.each do |map| 
		if !File.exist? map.to_s 
			die["couldn't find #{map.to_s}"]
		end
	end

	#if all the files are there start parsing the maps
	USED_MAPS.each do |map|
		if map == :political 

