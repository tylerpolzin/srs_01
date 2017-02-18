class TaskProduct < ApplicationRecord
  has_one :task
  belongs_to :item, foreign_key: :product_id
end
