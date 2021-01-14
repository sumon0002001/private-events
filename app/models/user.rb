class User < ApplicationRecord
    has_many :events, foreign_key: :creator_id, class_name: 'Event'
    
    scope :upcoming, -> { where('date >= ?', Date.today) }
    scope :past, -> { where('date < ? ', Date.today) }
end
