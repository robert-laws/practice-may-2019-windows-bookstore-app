class BookGenre < ApplicationRecord
  validates :genre,
    presence: true,
    uniqueness: true

  has_many :books

  def genre=(value)
    result = value.strip.downcase
    super(result)
  end

  scope :sorted, -> { order(genre: :asc) }
end
