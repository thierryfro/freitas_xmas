class Gift < ApplicationRecord
  belongs_to :user
  has_many :leeds
end
