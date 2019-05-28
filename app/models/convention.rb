class Convention < ApplicationRecord
  has_many :author_conventions
  has_many :authors, through: :author_conventions
end
