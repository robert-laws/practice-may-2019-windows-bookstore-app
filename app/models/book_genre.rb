class BookGenre < ApplicationRecord
  has_many :books

  scope :sorted, -> { order(genre: :asc) }
end
