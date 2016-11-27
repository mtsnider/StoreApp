class Aboutpage < ApplicationRecord
  validates :title, :body, presence: true
end
