class CreateDogs < ActiveRecord::Migration[7.1]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :sound
      t.text :meme_phrase
      t.string :provisional
      t.string :url
      t.string :image
      t.string :pdf
      t.integer :age
      t.string :size
      t.string :coat_length

      t.timestamps
    end
  end
end
