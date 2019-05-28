class AuthorConvention < ApplicationRecord
  belongs_to :author
  belongs_to :convention
end
