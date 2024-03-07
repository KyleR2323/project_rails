class Dog < ApplicationRecord
  belongs_to :group
  belongs_to :country
  belongs_to :section

  validates :name, :sound, :meme_phrase, :image, :age, :size, :coat_length, presence: true
end
