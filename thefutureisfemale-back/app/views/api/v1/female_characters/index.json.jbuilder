json.array! @female_characters do |female_character|
  json.extract! female_character, :id, :name, :book_title, :author_name, :owner_id
end
