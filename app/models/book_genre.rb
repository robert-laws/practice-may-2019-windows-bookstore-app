class BookGenre < ApplicationRecord
  validates :genre,
    presence: true,
    uniqueness: true

  has_many :books

  scope :sorted, -> { order(genre: :asc) }

  def genre=(value)
    result = value.strip.downcase
    super(result)
  end

  def all_capitalize_genre
    self.genre.split(" ").map{|s| s.capitalize}.join(" ")
  end
end
