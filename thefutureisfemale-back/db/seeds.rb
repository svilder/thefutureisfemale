puts "start seeding"

if Owner.find_by(name: "Sandra")
  @owner = Owner.find_by(name: "Sandra")
  @owner.female_characters.destroy_all
else
  @owner = Owner.new(name: "Sandra")
end

list = []

list << {
  name: "Miss Courtney",
  author_name: "",
  book_title: "À la croisée des Mondes"
}
list << {
  name: "Ciri et Yennefer",
  author_name: "",
  book_title: "Sorceleur"
}
list << {
  name: "'Médée",
  author_name: "Euripide",
  book_title: ""
}
list << {
  name: "Nynaeve",
  author_name: "",
  book_title: "La Roue du Temps"
}
list << {
  name: "Esmé Ciredutemps",
  author_name: "Pratchett",
  book_title: ""
}

list.each do |character|
  @female_character = FemaleCharacter.new(
    name: character[:name],
    author_name: character[:author_name],
    book_title: character[:book_title]
  )
  @female_character.owner = @owner
  if @owner.save && @female_character.save
    puts "success"
  else
    puts "error"
  end
end

puts "end of seeding"
