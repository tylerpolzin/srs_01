class Storeorder < ApplicationRecord
    belongs_to :task
    belongs_to :store, foreign_key: :store_id

end
