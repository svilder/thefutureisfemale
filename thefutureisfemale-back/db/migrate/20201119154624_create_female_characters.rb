class CreateFemaleCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :female_characters do |t|
      t.string :name, default: ""
      t.string :book_title, default: ""
      t.string :author_name, default: ""
      t.references :owner, null: false, foreign_key: true

      t.timestamps
    end
  end
end
