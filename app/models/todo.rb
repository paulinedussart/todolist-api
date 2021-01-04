class Todo < ApplicationRecord
	validates :title, presence: true, uniqueness: true
	validates :done, presence: true	
end
