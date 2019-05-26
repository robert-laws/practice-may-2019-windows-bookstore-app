class Author < ApplicationRecord
  has_many :books

  scope :sorted, -> { order(name: :asc) }
end
