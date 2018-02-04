class Klub < ApplicationRecord
	has_many :trofeum
	validates :name, presence: true    # Replace FILL_IN with the right code.
 	validates :city, presence: true
 	validates :position, presence: true    # Replace FILL_IN with the right code.
end
