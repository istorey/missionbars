class Wall < ActiveRecord::Base
	belongs_to :users
	has_many :posts, through: :users
end
