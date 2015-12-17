require "yaml"
require "date"

$countries = YAML.load_file("countries.yml")
$organizations = YAML.load_file("organizations.yml")
$globaltags = {}
$date = [2016, 1, 1]

#loads all the maps and country files and etc.
#returns a hash object containing everything
def load()

end

#takes the hash object returned by load and saves
#it to all the corresponding files
def save()

end

#increments day - do not put heavy calculations in here
def daytick()
    #puts "#{$date[0]}-#{$date[1]}-#{$date[2]}"
    if $date[2] < 30 # If day is between 1 and 29, increment
        $date[2] += 1
    else #Otherwise, roll over to next month
        $date[2] = 1
        monthtick()
    end
    sleep 1
end

#increments month - most events
def monthtick()
    if $date[1] < 12 # If month is between Jan and Nov, increment
        $date[1] += 1
    else #Otherwise, roll over to next year
        $date[1] = 1
        yeartick()
    end
end

#increments year - update GDP, population, happiness, etc
def yeartick()
    $date[0] += 1
end
