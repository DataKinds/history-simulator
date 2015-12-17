despotic_coup = {
    :reqs => "(%A.happiness < 0.5) && (!%A.tags.include?(\"authoritarian\"))",
    :chances => "chance = 0.008
        if (%A.happiness < 0.25) then chance *= 1.5 end
        if (%A.tags.include?(\"unstable\") then chance *=1.5 end)",
    :effect => "%A.tags - [\"democracy\", \"flawed\", \"hybrid\"]
        %A.tags << \"authoritarian\"
        %A.happiness *= 0.75"
}
