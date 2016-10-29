json.array! @characters do |character|
  json.name character.name
  json.house character.house
  json.location character.location
end
