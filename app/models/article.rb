class Article < ApplicationRecord
  validate :title, presence: true, lenght: { minimum: 3, maximum: 10 }
  validate :description, presence: true, lenght: { minimum: 5, maximum: 300 }
end