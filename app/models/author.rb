class Author < ApplicationRecord
  has_one :address
  has_many :books
  has_many :author_conventions
  has_many :conventions, through: :author_conventions

  validates :first_name, :last_name, :birth_year,
    presence: true
    
  scope :sorted, -> { order(last_name: :asc, first_name: :asc) }

  def name
    "#{first_name} #{last_name}"
  end
end
