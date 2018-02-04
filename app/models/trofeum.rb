class Trofeum < ApplicationRecord
	 belongs_to :klub
	validates :name, presence: true    # Replace FILL_IN with the right code.
 	validates :value, presence: true
 	validates :klub_id, presence: true
end
