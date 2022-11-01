class Membership < ApplicationRecord
    belongs_to :gym
    belongs_to :client, dependent: :destroy
    validates :client_id, uniqueness: true  
end
