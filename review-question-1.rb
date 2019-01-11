## QUESTION 1
require 'pry'

pokemon = [
  {
    "id": 1,
    "name": "bulbasaur",
    "base_experience": 64,
    "height": 7,
    "is_default": true,
    "order": 1,
    "weight": 69,
    "abilities": [
        {
            "is_hidden": true,
            "slot": 3,
            "ability": {
                "name": "chlorophyll",
                "url": "http://pokeapi.co/api/v2/ability/34/"
            }
        }
    ]
},
{
  "id": 3,
  "name": "venesaur",
  "base_experience": 50,
  "height": 10,
  "is_default": true,
  "order": 1,
  "weight": 90,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "fire",
              "url": "http://pokeapi.co/api/v2/ability/38/"
          }
      }
  ]
},
{
  "id": 2,
  "name": "pikachu",
  "base_experience": 60,
  "height": 4,
  "is_default": true,
  "order": 1,
  "weight": 37,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "lightning",
              "url": "http://pokeapi.co/api/v2/ability/30/"
          }
      }
  ]
}
]


# How would you get the url for Bulbasaur's ability?

def find_pokemon_url(monster,pokemon_array)
  pokemon_array.each do |monster_hash|
    if monster_hash[:name] == monster
      monster_hash[:abilities].each do |abilities_hash|
        return abilities_hash[:ability][:url]
      end
    end
  end
end

puts find_pokemon_url("bulbasaur",pokemon)

# How would you return the first pokemon with base experience over 40?

def find_min_base(base,pokemon_array)
  pokemon_array.find {|pokemon_hash| pokemon_hash[:base_experience]> base}
end

puts find_min_base(40,pokemon)

# How would you return ALL OF THE pokemon with base experience over 40? (Gotta catch em all)

def select_min_base(base,pokemon_array)
  pokemon_array.select {|pokemon_hash| pokemon_hash[:base_experience]> base}
end

puts select_min_base(40,pokemon)

# How would you return an array of all of the pokemon's names?

def all_names(pokemon_array)
  pokemon_name = []
  pokemon_array.each do |monster_hash|
    pokemon_name << monster_hash[:name]
  end
  pokemon_name
end

puts all_names(pokemon)

# How would you determine whether or not the pokemon array contained any pokemon with a weight greater than 60?

def weight_greater_than?(weight,pokemon_array)
  true_false = []
  pokemon_array.each do |monster_hash|
    monster_hash[:weight] > weight ? true_false << true : true_false << false
  end
  if true_false.include?(false)
    false
  else
    true
  end
end

puts weight_greater_than?(60,pokemon)
#  whatever method you use should return true if there are any such pokemon, false if not.
